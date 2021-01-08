.class public final Lcom/google/android/gms/internal/zzbkv;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbkv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaMr:Ljava/lang/String;

.field private zzaMs:Z

.field private zzaMw:Z

.field private zzaNt:Lcom/google/android/gms/drive/DriveId;

.field private zzaNu:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field private zzaNv:Lcom/google/android/gms/drive/zzc;

.field private zzaNw:I

.field private zzaNx:I

.field private zzaNy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbkw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbkv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IZLcom/google/android/gms/drive/zzp;)V
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p5}, Lcom/google/android/gms/drive/zzp;->zzsQ()Z

    move-result v4

    invoke-virtual {p5}, Lcom/google/android/gms/drive/zzp;->zzsP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5}, Lcom/google/android/gms/drive/zzp;->zzsR()I

    move-result v6

    invoke-virtual {p5}, Lcom/google/android/gms/drive/zzp;->zzsV()Z

    move-result v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzbkv;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/zzc;ZLjava/lang/String;IIZZ)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/zzc;ZLjava/lang/String;IIZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbkv;->zzaNt:Lcom/google/android/gms/drive/DriveId;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbkv;->zzaNu:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbkv;->zzaNv:Lcom/google/android/gms/drive/zzc;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzbkv;->zzaMs:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbkv;->zzaMr:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/zzbkv;->zzaNw:I

    iput p7, p0, Lcom/google/android/gms/internal/zzbkv;->zzaNx:I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzbkv;->zzaNy:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzbkv;->zzaMw:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkv;->zzaNt:Lcom/google/android/gms/drive/DriveId;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkv;->zzaNu:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkv;->zzaNv:Lcom/google/android/gms/drive/zzc;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbkv;->zzaMs:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkv;->zzaMr:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/zzbkv;->zzaNw:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/gms/internal/zzbkv;->zzaNx:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbkv;->zzaNy:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbkv;->zzaMw:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
