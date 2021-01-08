.class public final Lcom/google/android/gms/internal/au;
.super Lcom/google/android/gms/internal/zzcxp;


# instance fields
.field private final zzbKd:Lcom/google/android/gms/internal/zzcvx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcvx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/au;->zzbKd:Lcom/google/android/gms/internal/zzcvx;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcvz;[Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcvz;",
            "[",
            "Lcom/google/android/gms/internal/do",
            "<*>;)",
            "Lcom/google/android/gms/internal/do",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v1, p2

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->zzbKd:Lcom/google/android/gms/internal/zzcvx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcvx;->zzCx()Lcom/google/android/gms/internal/zzcus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcus;->zzCk()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ec;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/do;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
