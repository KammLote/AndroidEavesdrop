.class public final Lcom/google/android/gms/internal/zzbih;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbih;",
            ">;"
        }
    .end annotation
.end field

.field private static zzaKK:Lcom/google/android/gms/internal/zzer;

.field private static zzaKL:[I


# instance fields
.field private zzaKM:Lcom/google/android/gms/internal/acc;

.field private zzaKN:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbii;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbii;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbih;->zzaKK:Lcom/google/android/gms/internal/zzer;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/zzbih;->zzaKL:[I

    new-instance v0, Lcom/google/android/gms/internal/zzbij;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbij;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbih;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKM:Lcom/google/android/gms/internal/acc;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKN:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbih;->zzsA()V

    return-void
.end method

.method private final getId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbih;->zzsz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKM:Lcom/google/android/gms/internal/acc;

    iget-object v0, v0, Lcom/google/android/gms/internal/acc;->zzcqo:Ljava/lang/String;

    return-object v0
.end method

.method private final zzsA()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKM:Lcom/google/android/gms/internal/acc;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKN:[B

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKM:Lcom/google/android/gms/internal/acc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKN:[B

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKM:Lcom/google/android/gms/internal/acc;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKN:[B

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKM:Lcom/google/android/gms/internal/acc;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKN:[B

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKM:Lcom/google/android/gms/internal/acc;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKN:[B

    new-instance v1, Lcom/google/android/gms/internal/acc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/acc;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adg;[B)Lcom/google/android/gms/internal/adg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/acc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKM:Lcom/google/android/gms/internal/acc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKN:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/adf; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbih;->zzsA()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContextData"

    const-string v2, "Could not deserialize context bytes."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzbih;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzbih;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbih;->zzsz()V

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzbih;->zzsz()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbih;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzbih;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbih;->zzaKM:Lcom/google/android/gms/internal/acc;

    iget-object v2, v2, Lcom/google/android/gms/internal/acc;->zzcqp:Lcom/google/android/gms/internal/acf;

    iget v2, v2, Lcom/google/android/gms/internal/acf;->version:I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbih;->zzaKM:Lcom/google/android/gms/internal/acc;

    iget-object v3, v3, Lcom/google/android/gms/internal/acc;->zzcqp:Lcom/google/android/gms/internal/acf;

    iget v3, v3, Lcom/google/android/gms/internal/acf;->version:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbih;->zzsz()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbih;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbih;->zzaKM:Lcom/google/android/gms/internal/acc;

    iget-object v2, v2, Lcom/google/android/gms/internal/acc;->zzcqp:Lcom/google/android/gms/internal/acf;

    iget v2, v2, Lcom/google/android/gms/internal/acf;->version:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbih;->zzsz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKM:Lcom/google/android/gms/internal/acc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/zzbih;->zzaKK:Lcom/google/android/gms/internal/zzer;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzer;->zza(Lcom/google/android/gms/internal/zzbih;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKN:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKN:[B

    :goto_0
    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzaKM:Lcom/google/android/gms/internal/acc;

    invoke-static {v0}, Lcom/google/android/gms/internal/adg;->zzc(Lcom/google/android/gms/internal/adg;)[B

    move-result-object v0

    goto :goto_0
.end method
