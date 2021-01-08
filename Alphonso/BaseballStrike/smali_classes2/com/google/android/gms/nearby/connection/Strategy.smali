.class public final Lcom/google/android/gms/nearby/connection/Strategy;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/connection/Strategy;",
            ">;"
        }
    .end annotation
.end field

.field public static final P2P_CLUSTER:Lcom/google/android/gms/nearby/connection/Strategy;

.field public static final P2P_STAR:Lcom/google/android/gms/nearby/connection/Strategy;


# instance fields
.field private final zzbwC:I

.field private final zzbwD:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/connection/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/connection/Strategy;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/nearby/connection/Strategy;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/nearby/connection/Strategy;-><init>(II)V

    sput-object v0, Lcom/google/android/gms/nearby/connection/Strategy;->P2P_CLUSTER:Lcom/google/android/gms/nearby/connection/Strategy;

    new-instance v0, Lcom/google/android/gms/nearby/connection/Strategy;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/nearby/connection/Strategy;-><init>(II)V

    sput-object v0, Lcom/google/android/gms/nearby/connection/Strategy;->P2P_STAR:Lcom/google/android/gms/nearby/connection/Strategy;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzbwC:I

    iput p2, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzbwD:I

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
    instance-of v2, p1, Lcom/google/android/gms/nearby/connection/Strategy;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/nearby/connection/Strategy;

    iget v2, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzbwC:I

    iget v3, p1, Lcom/google/android/gms/nearby/connection/Strategy;->zzbwC:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzbwD:I

    iget v3, p1, Lcom/google/android/gms/nearby/connection/Strategy;->zzbwD:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzbwC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzbwD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v1, "Strategy(%s){connectionType=%d, topology=%d}"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/nearby/connection/Strategy;->P2P_CLUSTER:Lcom/google/android/gms/nearby/connection/Strategy;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/nearby/connection/Strategy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "P2P_CLUSTER"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget v3, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzbwC:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzbwD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/nearby/connection/Strategy;->P2P_STAR:Lcom/google/android/gms/nearby/connection/Strategy;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/nearby/connection/Strategy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "P2P_STAR"

    goto :goto_0

    :cond_1
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzbwC:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzbwD:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
