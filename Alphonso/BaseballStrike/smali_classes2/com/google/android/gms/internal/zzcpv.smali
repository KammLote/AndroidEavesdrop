.class final Lcom/google/android/gms/internal/zzcpv;
.super Lcom/google/android/gms/internal/zzcpr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcpr",
        "<",
        "Lcom/google/android/gms/nearby/messages/StatusCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbzI:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcpu;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcpv;->zzbzI:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcpr;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/nearby/messages/StatusCallback;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcpv;->zzbzI:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/messages/StatusCallback;->onPermissionChanged(Z)V

    return-void
.end method
