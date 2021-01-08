.class public final Lcom/google/android/gms/internal/xk;
.super Lcom/google/android/gms/internal/wy;


# static fields
.field private static final zzciy:Lcom/google/android/gms/internal/xk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/xk;->zzciy:Lcom/google/android/gms/internal/xk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/wy;-><init>()V

    return-void
.end method

.method public static zzJj()Lcom/google/android/gms/internal/xk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xk;->zzciy:Lcom/google/android/gms/internal/xk;

    return-object v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/xe;

    check-cast p2, Lcom/google/android/gms/internal/xe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xe;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->zzIP()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xe;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/xf;->zzIP()Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v3

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/xf;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/wj;->zzi(Lcom/google/android/gms/internal/wj;)I

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/xk;

    return v0
.end method

.method public final hashCode()I
    .locals 1

    const v0, 0x302679

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PriorityIndex"

    return-object v0
.end method

.method public final zzJa()Lcom/google/android/gms/internal/xe;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzII()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/xf;->zzcit:Lcom/google/android/gms/internal/wl;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/xk;->zzf(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xe;

    move-result-object v0

    return-object v0
.end method

.method public final zzJb()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get query definition on priority index!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xe;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/xe;

    new-instance v1, Lcom/google/android/gms/internal/xn;

    const-string v2, "[PRIORITY-POST]"

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/internal/xn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/xf;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/xf;)Z
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/internal/xf;->zzIP()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
