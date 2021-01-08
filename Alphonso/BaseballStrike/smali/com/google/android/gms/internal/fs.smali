.class public final Lcom/google/android/gms/internal/fs;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/fs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzbNQ:Ljava/lang/String;

.field public final zzbNW:Lcom/google/android/gms/internal/fd;

.field private zzbNX:Lcom/google/android/gms/internal/fd;

.field public final zzbNZ:Ljava/lang/String;

.field private zzbOa:F

.field private zzbOg:[Lcom/google/android/gms/internal/fn;

.field private zzbOh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ft;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ft;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/fn;Lcom/google/android/gms/internal/fd;Lcom/google/android/gms/internal/fd;Ljava/lang/String;FLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fs;->zzbOg:[Lcom/google/android/gms/internal/fn;

    iput-object p2, p0, Lcom/google/android/gms/internal/fs;->zzbNW:Lcom/google/android/gms/internal/fd;

    iput-object p3, p0, Lcom/google/android/gms/internal/fs;->zzbNX:Lcom/google/android/gms/internal/fd;

    iput-object p4, p0, Lcom/google/android/gms/internal/fs;->zzbNZ:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/fs;->zzbOa:F

    iput-object p6, p0, Lcom/google/android/gms/internal/fs;->zzbNQ:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/fs;->zzbOh:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/fs;->zzbOg:[Lcom/google/android/gms/internal/fn;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/fs;->zzbNW:Lcom/google/android/gms/internal/fd;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/fs;->zzbNX:Lcom/google/android/gms/internal/fd;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/fs;->zzbNZ:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/fs;->zzbOa:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IF)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/fs;->zzbNQ:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fs;->zzbOh:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
