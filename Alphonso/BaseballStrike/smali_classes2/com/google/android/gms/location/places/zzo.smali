.class public final Lcom/google/android/gms/location/places/zzo;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/zzo;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbjW:Lcom/google/android/gms/location/places/zzo;

.field private static zzbjX:Lcom/google/android/gms/location/places/zzo;

.field private static zzbjY:Lcom/google/android/gms/location/places/zzo;

.field private static zzbjZ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/location/places/zzo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzVB:Ljava/lang/String;

.field private zzbka:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "test_type"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/zzo;->zzt(Ljava/lang/String;I)Lcom/google/android/gms/location/places/zzo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/zzo;->zzbjW:Lcom/google/android/gms/location/places/zzo;

    const-string v0, "labeled_place"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/zzo;->zzt(Ljava/lang/String;I)Lcom/google/android/gms/location/places/zzo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/zzo;->zzbjX:Lcom/google/android/gms/location/places/zzo;

    const-string v0, "here_content"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/zzo;->zzt(Ljava/lang/String;I)Lcom/google/android/gms/location/places/zzo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/zzo;->zzbjY:Lcom/google/android/gms/location/places/zzo;

    sget-object v0, Lcom/google/android/gms/location/places/zzo;->zzbjW:Lcom/google/android/gms/location/places/zzo;

    sget-object v1, Lcom/google/android/gms/location/places/zzo;->zzbjX:Lcom/google/android/gms/location/places/zzo;

    sget-object v2, Lcom/google/android/gms/location/places/zzo;->zzbjY:Lcom/google/android/gms/location/places/zzo;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/util/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/zzo;->zzbjZ:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/location/places/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/zzo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/location/places/zzo;->zzVB:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/location/places/zzo;->zzbka:I

    return-void
.end method

.method private static zzt(Ljava/lang/String;I)Lcom/google/android/gms/location/places/zzo;
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/zzo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/places/zzo;-><init>(Ljava/lang/String;I)V

    return-object v0
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
    instance-of v2, p1, Lcom/google/android/gms/location/places/zzo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/zzo;

    iget-object v2, p0, Lcom/google/android/gms/location/places/zzo;->zzVB:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/zzo;->zzVB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/zzo;->zzbka:I

    iget v3, p1, Lcom/google/android/gms/location/places/zzo;->zzbka:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzo;->zzVB:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzo;->zzVB:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/zzo;->zzVB:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/location/places/zzo;->zzbka:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
