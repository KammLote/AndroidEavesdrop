.class public final Lcom/google/android/gms/internal/zzbix;
.super Lcom/google/android/gms/awareness/fence/AwarenessFence;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbix;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaKZ:Lcom/google/android/gms/internal/ace;

.field private zzaLa:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbiy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbix;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ace;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ace;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaKZ:Lcom/google/android/gms/internal/ace;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaLa:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbix;->zzsA()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaKZ:Lcom/google/android/gms/internal/ace;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbix;->zzaLa:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbix;->zzsA()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbim;)Lcom/google/android/gms/internal/zzbix;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbix;->zzaK(I)Lcom/google/android/gms/internal/ace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbim;->zzsB()Lcom/google/android/gms/internal/aby;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ace;->zzcqC:Lcom/google/android/gms/internal/aby;

    new-instance v1, Lcom/google/android/gms/internal/zzbix;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbix;-><init>(Lcom/google/android/gms/internal/ace;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbin;)Lcom/google/android/gms/internal/zzbix;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbix;->zzaK(I)Lcom/google/android/gms/internal/ace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbin;->zzsE()Lcom/google/android/gms/internal/abz;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ace;->zzcqG:Lcom/google/android/gms/internal/abz;

    new-instance v1, Lcom/google/android/gms/internal/zzbix;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbix;-><init>(Lcom/google/android/gms/internal/ace;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbir;)Lcom/google/android/gms/internal/zzbix;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbix;->zzaK(I)Lcom/google/android/gms/internal/ace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbir;->zzsF()Lcom/google/android/gms/internal/aca;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ace;->zzcqH:Lcom/google/android/gms/internal/aca;

    new-instance v1, Lcom/google/android/gms/internal/zzbix;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbix;-><init>(Lcom/google/android/gms/internal/ace;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbix;)Lcom/google/android/gms/internal/zzbix;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbix;->zzaK(I)Lcom/google/android/gms/internal/ace;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbix;->zzg(Ljava/util/Collection;)[Lcom/google/android/gms/internal/ace;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ace;->zzcqy:[Lcom/google/android/gms/internal/ace;

    new-instance v0, Lcom/google/android/gms/internal/zzbix;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbix;-><init>(Lcom/google/android/gms/internal/ace;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbjn;)Lcom/google/android/gms/internal/zzbix;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbix;->zzaK(I)Lcom/google/android/gms/internal/ace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjn;->zzsG()Lcom/google/android/gms/internal/acj;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ace;->zzcqA:Lcom/google/android/gms/internal/acj;

    new-instance v1, Lcom/google/android/gms/internal/zzbix;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbix;-><init>(Lcom/google/android/gms/internal/ace;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbjp;)Lcom/google/android/gms/internal/zzbix;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbix;->zzaK(I)Lcom/google/android/gms/internal/ace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjp;->zzsH()Lcom/google/android/gms/internal/acs;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ace;->zzcqP:Lcom/google/android/gms/internal/acs;

    new-instance v1, Lcom/google/android/gms/internal/zzbix;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbix;-><init>(Lcom/google/android/gms/internal/ace;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbjq;)Lcom/google/android/gms/internal/zzbix;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjq;->zzsI()Lcom/google/android/gms/internal/acu;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/acu;->zzcrt:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbix;->zzaK(I)Lcom/google/android/gms/internal/ace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjq;->zzsI()Lcom/google/android/gms/internal/acu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ace;->zzcqQ:Lcom/google/android/gms/internal/acu;

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzbix;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbix;-><init>(Lcom/google/android/gms/internal/ace;)V

    return-object v1

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbix;->zzaK(I)Lcom/google/android/gms/internal/ace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjq;->zzsI()Lcom/google/android/gms/internal/acu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ace;->zzcqz:Lcom/google/android/gms/internal/acu;

    goto :goto_0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbjr;)Lcom/google/android/gms/internal/zzbix;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbix;->zzaK(I)Lcom/google/android/gms/internal/ace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjr;->zzsJ()Lcom/google/android/gms/internal/acv;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ace;->zzcqL:Lcom/google/android/gms/internal/acv;

    new-instance v1, Lcom/google/android/gms/internal/zzbix;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbix;-><init>(Lcom/google/android/gms/internal/ace;)V

    return-object v1
.end method

.method private static zzaK(I)Lcom/google/android/gms/internal/ace;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ace;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ace;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/ace;->type:I

    return-object v0
.end method

.method public static zze(Ljava/util/Collection;)Lcom/google/android/gms/internal/zzbix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zzbix;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbix;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbix;->zzaK(I)Lcom/google/android/gms/internal/ace;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbix;->zzg(Ljava/util/Collection;)[Lcom/google/android/gms/internal/ace;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ace;->zzcqy:[Lcom/google/android/gms/internal/ace;

    new-instance v1, Lcom/google/android/gms/internal/zzbix;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbix;-><init>(Lcom/google/android/gms/internal/ace;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzf(Ljava/util/Collection;)Lcom/google/android/gms/internal/zzbix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zzbix;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbix;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbix;->zzaK(I)Lcom/google/android/gms/internal/ace;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbix;->zzg(Ljava/util/Collection;)[Lcom/google/android/gms/internal/ace;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ace;->zzcqy:[Lcom/google/android/gms/internal/ace;

    new-instance v1, Lcom/google/android/gms/internal/zzbix;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbix;-><init>(Lcom/google/android/gms/internal/ace;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzg(Ljava/util/Collection;)[Lcom/google/android/gms/internal/ace;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zzbix;",
            ">;)[",
            "Lcom/google/android/gms/internal/ace;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v3, v0, [Lcom/google/android/gms/internal/ace;

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbix;

    add-int/lit8 v2, v1, 0x1

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbix;->zzsz()V

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbix;->zzaKZ:Lcom/google/android/gms/internal/ace;

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private final zzsA()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaKZ:Lcom/google/android/gms/internal/ace;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaLa:[B

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaKZ:Lcom/google/android/gms/internal/ace;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaLa:[B

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaKZ:Lcom/google/android/gms/internal/ace;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaLa:[B

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaKZ:Lcom/google/android/gms/internal/ace;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaLa:[B

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzsz()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaKZ:Lcom/google/android/gms/internal/ace;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaLa:[B

    new-instance v1, Lcom/google/android/gms/internal/ace;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ace;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adg;[B)Lcom/google/android/gms/internal/adg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ace;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaKZ:Lcom/google/android/gms/internal/ace;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaLa:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/adf; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbix;->zzsA()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContextFenceStub"

    const-string v2, "Could not deserialize context fence bytes."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzeq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbix;->zzsz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaKZ:Lcom/google/android/gms/internal/ace;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ace;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaLa:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaLa:[B

    :goto_0
    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbix;->zzaKZ:Lcom/google/android/gms/internal/ace;

    invoke-static {v0}, Lcom/google/android/gms/internal/adg;->zzc(Lcom/google/android/gms/internal/adg;)[B

    move-result-object v0

    goto :goto_0
.end method
