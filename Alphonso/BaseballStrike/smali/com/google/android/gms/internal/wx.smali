.class public final Lcom/google/android/gms/internal/wx;
.super Lcom/google/android/gms/internal/wl;

# interfaces
.implements Lcom/google/android/gms/internal/xf;


# static fields
.field private static final zzcih:Lcom/google/android/gms/internal/wx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/wx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/wx;->zzcih:Lcom/google/android/gms/internal/wx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/wl;-><init>()V

    return-void
.end method

.method public static zzIZ()Lcom/google/android/gms/internal/wx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wx;->zzcih:Lcom/google/android/gms/internal/wx;

    return-object v0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/xf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wx;->zzg(Lcom/google/android/gms/internal/xf;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x1

    instance-of v0, p1, Lcom/google/android/gms/internal/wx;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/xf;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/xf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/xf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/xf;->zzIP()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValue(Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/xe;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<Empty Node>"

    return-object v0
.end method

.method public final zzFy()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/xe;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzIN()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final zzIO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzIP()Lcom/google/android/gms/internal/xf;
    .locals 0

    return-object p0
.end method

.method public final zzN(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;
    .locals 0

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/xh;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
    .locals 1

    invoke-interface {p2}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wj;->zzIL()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/wl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wl;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/wl;->zze(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object p0

    goto :goto_0
.end method

.method public final bridge synthetic zzf(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
    .locals 0

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/xf;)I
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final zzk(Lcom/google/android/gms/internal/wj;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/wj;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHc()Lcom/google/android/gms/internal/qo;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Lcom/google/android/gms/internal/xf;->zzl(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/wx;->zze(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object p2

    goto :goto_0
.end method

.method public final zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;
    .locals 0

    return-object p0
.end method
