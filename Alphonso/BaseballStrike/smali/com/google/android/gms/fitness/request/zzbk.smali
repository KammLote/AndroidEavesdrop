.class public final Lcom/google/android/gms/fitness/request/zzbk;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzbk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaWm:Ljava/lang/String;

.field private final zzaWo:Lcom/google/android/gms/internal/zzbxf;

.field private final zzaku:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzbl;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzbl;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzbk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaku:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaWm:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzbxg;->zzW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbxf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaWo:Lcom/google/android/gms/internal/zzbxf;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzbxf;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaku:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaWm:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaWo:Lcom/google/android/gms/internal/zzbxf;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "UnclaimBleDeviceRequest{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaWm:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaWm:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaWo:Lcom/google/android/gms/internal/zzbxf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v0, 0x3e8

    iget v2, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaku:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaWo:Lcom/google/android/gms/internal/zzbxf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbxf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
