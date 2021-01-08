.class public final Lcom/google/android/gms/internal/zzczm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcxn;


# static fields
.field private static zzbHN:Lcom/google/android/gms/internal/zzcvt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcvt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/google/android/gms/internal/zzczm;->zzbHN:Lcom/google/android/gms/internal/zzcvt;

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

    if-ne v0, v1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/ea;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    sget-object v1, Lcom/google/android/gms/internal/zzczm;->zzbHN:Lcom/google/android/gms/internal/zzcvt;

    aget-object v0, p2, v2

    check-cast v0, Lcom/google/android/gms/internal/ea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ea;->value()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcvt;->zzfH(Ljava/lang/String;)Lcom/google/android/gms/internal/do;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
