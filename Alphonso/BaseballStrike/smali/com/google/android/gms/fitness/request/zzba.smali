.class public final Lcom/google/android/gms/fitness/request/zzba;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzba;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;

.field private final zzaVf:Ljava/lang/String;

.field private final zzaXo:Lcom/google/android/gms/internal/zzbxc;

.field private final zzaku:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzbb;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzbb;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzba;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzba;->zzaku:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzba;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzba;->zzaVf:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/internal/zzbxd;->zzV(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbxc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzba;->zzaXo:Lcom/google/android/gms/internal/zzbxc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbxc;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzba;->zzaku:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzba;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzba;->zzaVf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzba;->zzaXo:Lcom/google/android/gms/internal/zzbxc;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/request/zzba;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/zzba;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzba;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/zzba;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzba;->zzaVf:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/zzba;->zzaVf:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzba;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzba;->zzaVf:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbe;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzba;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbg;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    const-string v1, "identifier"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzba;->zzaVf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbg;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzbg;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzba;->mName:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzba;->zzaVf:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzba;->zzaXo:Lcom/google/android/gms/internal/zzbxc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v0, 0x3e8

    iget v2, p0, Lcom/google/android/gms/fitness/request/zzba;->zzaku:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzba;->zzaXo:Lcom/google/android/gms/internal/zzbxc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbxc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
