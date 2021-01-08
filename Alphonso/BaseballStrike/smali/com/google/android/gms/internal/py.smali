.class final Lcom/google/android/gms/internal/py;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/uv",
        "<",
        "Lcom/google/android/gms/internal/xf;",
        "Lcom/google/android/gms/internal/px;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzccI:Lcom/google/android/gms/internal/qo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/px;Lcom/google/android/gms/internal/qo;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/py;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/google/android/gms/internal/xf;

    check-cast p3, Lcom/google/android/gms/internal/px;

    iget-object v0, p0, Lcom/google/android/gms/internal/py;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/qo;->zzh(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/google/android/gms/internal/px;->zze(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/px;

    move-result-object v0

    return-object v0
.end method
