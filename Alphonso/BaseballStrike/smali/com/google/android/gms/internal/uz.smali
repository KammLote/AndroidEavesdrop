.class final Lcom/google/android/gms/internal/uz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/vb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vb",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic zzcgB:Lcom/google/android/gms/internal/vb;

.field private synthetic zzcgC:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/uy;Lcom/google/android/gms/internal/vb;Z)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/uz;->zzcgB:Lcom/google/android/gms/internal/vb;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/uz;->zzcgC:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/uy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/uy",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/uz;->zzcgB:Lcom/google/android/gms/internal/vb;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/uz;->zzcgC:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/uy;->zza(Lcom/google/android/gms/internal/vb;ZZ)V

    return-void
.end method
