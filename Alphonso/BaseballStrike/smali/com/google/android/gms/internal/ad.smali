.class public final Lcom/google/android/gms/internal/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcxn;


# instance fields
.field private final zzbJW:Lcom/google/android/gms/internal/zzctz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzctz;->zzbu(Landroid/content/Context;)Lcom/google/android/gms/internal/zzctz;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ad;-><init>(Lcom/google/android/gms/internal/zzctz;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzctz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ad;->zzbJW:Lcom/google/android/gms/internal/zzctz;

    return-void
.end method


# virtual methods
.method public final varargs zzb(Lcom/google/android/gms/internal/zzcvz;[Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->zzbJW:Lcom/google/android/gms/internal/zzctz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzctz;->zzAy()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/du;->zzbLs:Lcom/google/android/gms/internal/du;

    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ea;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ea;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method
