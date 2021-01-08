.class public final Lcom/google/android/gms/internal/ac;
.super Lcom/google/android/gms/internal/zzcxp;


# instance fields
.field private final zzbIN:Lcom/google/android/gms/internal/zzcvx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcvx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxp;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ac;->zzbIN:Lcom/google/android/gms/internal/zzcvx;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcvz;[Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;
    .locals 3
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

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v2, p2

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->zzbIN:Lcom/google/android/gms/internal/zzcvx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcvx;->zzCx()Lcom/google/android/gms/internal/zzcus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcus;->zzat(Z)V

    sget-object v0, Lcom/google/android/gms/internal/du;->zzbLs:Lcom/google/android/gms/internal/du;

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
