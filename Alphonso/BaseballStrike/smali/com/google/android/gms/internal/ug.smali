.class public final Lcom/google/android/gms/internal/ug;
.super Ljava/lang/Object;


# static fields
.field private static final zzcgd:Lcom/google/android/gms/internal/uw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uw",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcge:Lcom/google/android/gms/internal/uw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uw",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcgf:Lcom/google/android/gms/internal/us;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/us",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcgg:Lcom/google/android/gms/internal/us;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/us",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzcgc:Lcom/google/android/gms/internal/us;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/us",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/uh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/uh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ug;->zzcgd:Lcom/google/android/gms/internal/uw;

    new-instance v0, Lcom/google/android/gms/internal/ui;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ui;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ug;->zzcge:Lcom/google/android/gms/internal/uw;

    new-instance v0, Lcom/google/android/gms/internal/us;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/us;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ug;->zzcgf:Lcom/google/android/gms/internal/us;

    new-instance v0, Lcom/google/android/gms/internal/us;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/us;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ug;->zzcgg:Lcom/google/android/gms/internal/us;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/us;->zzHQ()Lcom/google/android/gms/internal/us;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/us;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/us",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/ug;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ug;

    iget-object v2, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    iget-object v3, p1, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/us;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/us;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/us;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{PruneForest:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzHM()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    sget-object v1, Lcom/google/android/gms/internal/ug;->zzcge:Lcom/google/android/gms/internal/uw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/us;->zzb(Lcom/google/android/gms/internal/uw;)Z

    move-result v0

    return v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/uv;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/uv",
            "<",
            "Ljava/lang/Void;",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    new-instance v1, Lcom/google/android/gms/internal/uj;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/uj;-><init>(Lcom/google/android/gms/internal/ug;Lcom/google/android/gms/internal/uv;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/us;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/uv;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/ug;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/us;->zze(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/us;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/us;

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/us;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ug;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ug;-><init>(Lcom/google/android/gms/internal/us;)V

    return-object v1

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/us;->zzb(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/us;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final zzv(Lcom/google/android/gms/internal/qo;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/us;->zzG(Lcom/google/android/gms/internal/qo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzw(Lcom/google/android/gms/internal/qo;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/us;->zzG(Lcom/google/android/gms/internal/qo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzx(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/ug;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    sget-object v1, Lcom/google/android/gms/internal/ug;->zzcgd:Lcom/google/android/gms/internal/uw;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/us;->zzb(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/uw;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t prune path that was kept previously!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    sget-object v1, Lcom/google/android/gms/internal/ug;->zzcge:Lcom/google/android/gms/internal/uw;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/us;->zzb(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/uw;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    sget-object v1, Lcom/google/android/gms/internal/ug;->zzcgf:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/us;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/us;)Lcom/google/android/gms/internal/us;

    move-result-object v0

    new-instance p0, Lcom/google/android/gms/internal/ug;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ug;-><init>(Lcom/google/android/gms/internal/us;)V

    goto :goto_0
.end method

.method public final zzy(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/ug;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    sget-object v1, Lcom/google/android/gms/internal/ug;->zzcgd:Lcom/google/android/gms/internal/uw;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/us;->zzb(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/uw;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->zzcgc:Lcom/google/android/gms/internal/us;

    sget-object v1, Lcom/google/android/gms/internal/ug;->zzcgg:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/us;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/us;)Lcom/google/android/gms/internal/us;

    move-result-object v0

    new-instance p0, Lcom/google/android/gms/internal/ug;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ug;-><init>(Lcom/google/android/gms/internal/us;)V

    goto :goto_0
.end method
