.class public Lcom/google/firebase/database/MutableData;
.super Ljava/lang/Object;


# instance fields
.field private final zzbZe:Lcom/google/android/gms/internal/se;

.field private final zzbZf:Lcom/google/android/gms/internal/qo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/se;Lcom/google/android/gms/internal/qo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/MutableData;->zzbZe:Lcom/google/android/gms/internal/se;

    iput-object p2, p0, Lcom/google/firebase/database/MutableData;->zzbZf:Lcom/google/android/gms/internal/qo;

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzbZf:Lcom/google/android/gms/internal/qo;

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/tk;->zza(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/se;Lcom/google/android/gms/internal/qo;Lcom/google/firebase/database/zzi;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/android/gms/internal/se;Lcom/google/android/gms/internal/qo;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/xf;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/se;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/se;-><init>(Lcom/google/android/gms/internal/xf;)V

    new-instance v1, Lcom/google/android/gms/internal/qo;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/qo;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/android/gms/internal/se;Lcom/google/android/gms/internal/qo;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/database/MutableData;)Lcom/google/android/gms/internal/se;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzbZe:Lcom/google/android/gms/internal/se;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/firebase/database/MutableData;)Lcom/google/android/gms/internal/qo;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzbZf:Lcom/google/android/gms/internal/qo;

    return-object v0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/firebase/database/MutableData;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/yw;->zzhb(Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/database/MutableData;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzbZe:Lcom/google/android/gms/internal/se;

    iget-object v2, p0, Lcom/google/firebase/database/MutableData;->zzbZf:Lcom/google/android/gms/internal/qo;

    new-instance v3, Lcom/google/android/gms/internal/qo;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/qo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/qo;->zzh(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/qo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/android/gms/internal/se;Lcom/google/android/gms/internal/qo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/firebase/database/MutableData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzbZe:Lcom/google/android/gms/internal/se;

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/database/MutableData;

    iget-object v0, v0, Lcom/google/firebase/database/MutableData;->zzbZe:Lcom/google/android/gms/internal/se;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzbZf:Lcom/google/android/gms/internal/qo;

    check-cast p1, Lcom/google/firebase/database/MutableData;

    iget-object v1, p1, Lcom/google/firebase/database/MutableData;->zzbZf:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildren()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/firebase/database/MutableData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->zzIO()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/google/firebase/database/zzi;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/zzi;-><init>(Lcom/google/firebase/database/MutableData;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/wz;->zzj(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/wz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wz;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v0, Lcom/google/firebase/database/zzk;

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/database/zzk;-><init>(Lcom/google/firebase/database/MutableData;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public getChildrenCount()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->getChildCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzbZf:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->zzHe()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzbZf:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->zzHe()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wj;->asString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPriority()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->zzIP()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/GenericTypeIndicator",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/yx;->zza(Ljava/lang/Object;Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/yx;->zza(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/qo;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/qo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/xf;->zzN(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

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

.method public hasChildren()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->zzIO()Z

    move-result v1

    if-nez v1, :cond_0

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

.method public setPriority(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzbZe:Lcom/google/android/gms/internal/se;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzbZf:Lcom/google/android/gms/internal/qo;

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/MutableData;->zzbZf:Lcom/google/android/gms/internal/qo;

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/xl;->zzc(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/xf;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/xf;->zzf(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/se;->zzg(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzbZf:Lcom/google/android/gms/internal/qo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/tk;->zza(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/yx;->zzan(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/yw;->zzam(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzbZe:Lcom/google/android/gms/internal/se;

    iget-object v2, p0, Lcom/google/firebase/database/MutableData;->zzbZf:Lcom/google/android/gms/internal/qo;

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/xi;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/se;->zzg(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzbZf:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wj;->asString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzbZe:Lcom/google/android/gms/internal/se;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/se;->zzHl()Lcom/google/android/gms/internal/xf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/xf;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "MutableData { key = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", value = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "<none>"

    goto :goto_0
.end method

.method final zzFm()Lcom/google/android/gms/internal/xf;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzbZe:Lcom/google/android/gms/internal/se;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzbZf:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/se;->zzp(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    return-object v0
.end method
