.class public final Lcom/google/android/gms/internal/zzath;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaob:Lcom/google/android/gms/location/ActivityRecognitionResult;

.field private final zzaoc:Lcom/google/android/gms/internal/zzass;

.field private final zzaod:Lcom/google/android/gms/internal/zzasw;

.field private final zzaoe:Lcom/google/android/gms/internal/zzasy;

.field private final zzaof:Lcom/google/android/gms/common/data/DataHolder;

.field private final zzaog:Lcom/google/android/gms/internal/zzatd;

.field private final zzaoh:Lcom/google/android/gms/internal/zzatf;

.field private final zzaoi:Lcom/google/android/gms/internal/zzaug;

.field private final zzaoj:Lcom/google/android/gms/internal/zzaud;

.field private final zzdg:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzatz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzatz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzath;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/ActivityRecognitionResult;Lcom/google/android/gms/internal/zzass;Lcom/google/android/gms/internal/zzasw;Landroid/location/Location;Lcom/google/android/gms/internal/zzasy;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzatd;Lcom/google/android/gms/internal/zzatf;Lcom/google/android/gms/internal/zzaug;Lcom/google/android/gms/internal/zzaud;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzath;->zzaob:Lcom/google/android/gms/location/ActivityRecognitionResult;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzath;->zzaoc:Lcom/google/android/gms/internal/zzass;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzath;->zzaod:Lcom/google/android/gms/internal/zzasw;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzath;->zzdg:Landroid/location/Location;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzath;->zzaoe:Lcom/google/android/gms/internal/zzasy;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzath;->zzaof:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzath;->zzaog:Lcom/google/android/gms/internal/zzatd;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzath;->zzaoh:Lcom/google/android/gms/internal/zzatf;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzath;->zzaoi:Lcom/google/android/gms/internal/zzaug;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzath;->zzaoj:Lcom/google/android/gms/internal/zzaud;

    return-void
.end method


# virtual methods
.method public final getActivityRecognitionResult()Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzath;->zzaob:Lcom/google/android/gms/location/ActivityRecognitionResult;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzath;->zzdg:Landroid/location/Location;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzath;->zzaob:Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzath;->zzaoc:Lcom/google/android/gms/internal/zzass;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzath;->zzaod:Lcom/google/android/gms/internal/zzasw;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzath;->zzdg:Landroid/location/Location;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzath;->zzaoe:Lcom/google/android/gms/internal/zzasy;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzath;->zzaof:Lcom/google/android/gms/common/data/DataHolder;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzath;->zzaog:Lcom/google/android/gms/internal/zzatd;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzath;->zzaoh:Lcom/google/android/gms/internal/zzatf;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzath;->zzaoi:Lcom/google/android/gms/internal/zzaug;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/zzath;->zzaoj:Lcom/google/android/gms/internal/zzaud;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzmW()Lcom/google/android/gms/internal/zzass;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzath;->zzaoc:Lcom/google/android/gms/internal/zzass;

    return-object v0
.end method

.method public final zzmX()Lcom/google/android/gms/internal/zzasw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzath;->zzaod:Lcom/google/android/gms/internal/zzasw;

    return-object v0
.end method

.method public final zzmY()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzath;->zzaof:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public final zzmZ()Lcom/google/android/gms/internal/zzaug;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzath;->zzaoi:Lcom/google/android/gms/internal/zzaug;

    return-object v0
.end method

.method public final zzna()Lcom/google/android/gms/internal/zzaud;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzath;->zzaoj:Lcom/google/android/gms/internal/zzaud;

    return-object v0
.end method
