.class public final Lcom/google/android/gms/internal/xo;
.super Lcom/google/android/gms/internal/wy;


# static fields
.field private static final zzciC:Lcom/google/android/gms/internal/xo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/xo;->zzciC:Lcom/google/android/gms/internal/xo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/wy;-><init>()V

    return-void
.end method

.method public static zzJk()Lcom/google/android/gms/internal/xo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xo;->zzciC:Lcom/google/android/gms/internal/xo;

    return-object v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/xe;

    check-cast p2, Lcom/google/android/gms/internal/xe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xe;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xe;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/xf;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wj;->zzi(Lcom/google/android/gms/internal/wj;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/xo;

    return v0
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ValueIndex"

    return-object v0
.end method

.method public final zzJa()Lcom/google/android/gms/internal/xe;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/xe;

    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzII()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/xf;->zzcit:Lcom/google/android/gms/internal/wl;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    return-object v0
.end method

.method public final zzJb()Ljava/lang/String;
    .locals 1

    const-string v0, ".value"

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xe;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xe;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/xf;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
