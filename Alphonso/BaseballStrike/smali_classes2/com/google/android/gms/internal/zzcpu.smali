.class public final Lcom/google/android/gms/internal/zzcpu;
.super Lcom/google/android/gms/nearby/messages/internal/zzy;

# interfaces
.implements Lcom/google/android/gms/internal/zzcpm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzy;",
        "Lcom/google/android/gms/internal/zzcpm",
        "<",
        "Lcom/google/android/gms/nearby/messages/StatusCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbzE:Lcom/google/android/gms/internal/zzbdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcpu;->zzbzE:Lcom/google/android/gms/internal/zzbdv;

    return-void
.end method


# virtual methods
.method public final onPermissionChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpu;->zzbzE:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzcpv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcpv;-><init>(Lcom/google/android/gms/internal/zzcpu;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method

.method public final zzzX()Lcom/google/android/gms/internal/zzbdv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpu;->zzbzE:Lcom/google/android/gms/internal/zzbdv;

    return-object v0
.end method
