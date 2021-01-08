.class public final Lcom/google/android/gms/internal/xa;
.super Lcom/google/android/gms/internal/wy;


# static fields
.field private static final zzcil:Lcom/google/android/gms/internal/xa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/xa;->zzcil:Lcom/google/android/gms/internal/xa;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/wy;-><init>()V

    return-void
.end method

.method public static zzJf()Lcom/google/android/gms/internal/xa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xa;->zzcil:Lcom/google/android/gms/internal/xa;

    return-object v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/xe;

    check-cast p2, Lcom/google/android/gms/internal/xe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wj;->zzi(Lcom/google/android/gms/internal/wj;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/xa;

    return v0
.end method

.method public final hashCode()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "KeyIndex"

    return-object v0
.end method

.method public final zzJa()Lcom/google/android/gms/internal/xe;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/xe;->zzJh()Lcom/google/android/gms/internal/xe;

    move-result-object v0

    return-object v0
.end method

.method public final zzJb()Ljava/lang/String;
    .locals 1

    const-string v0, ".key"

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xe;
    .locals 3

    new-instance v1, Lcom/google/android/gms/internal/xe;

    invoke-interface {p2}, Lcom/google/android/gms/internal/xf;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/wj;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    return-object v1
.end method

.method public final zzi(Lcom/google/android/gms/internal/xf;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
