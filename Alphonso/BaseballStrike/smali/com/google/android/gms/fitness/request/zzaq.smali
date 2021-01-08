.class public final Lcom/google/android/gms/fitness/request/zzaq;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzaq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final zzaWV:Lcom/google/android/gms/fitness/data/zzt;

.field private final zzaWo:Lcom/google/android/gms/internal/zzbxf;

.field private final zzaku:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzar;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzar;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzaq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzaq;->zzaku:I

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzaq;->zzaWV:Lcom/google/android/gms/fitness/data/zzt;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzaq;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p4}, Lcom/google/android/gms/internal/zzbxg;->zzW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbxf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzaq;->zzaWo:Lcom/google/android/gms/internal/zzbxf;

    return-void

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/fitness/data/zzu;->zzN(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/zzt;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzbxf;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzaq;->zzaku:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzaq;->zzaWV:Lcom/google/android/gms/fitness/data/zzt;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzaq;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzaq;->zzaWo:Lcom/google/android/gms/internal/zzbxf;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "SensorUnregistrationRequest{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzaq;->zzaWV:Lcom/google/android/gms/fitness/data/zzt;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzaq;->zzaWV:Lcom/google/android/gms/fitness/data/zzt;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {p1, v3, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzaq;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p1, v0, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzaq;->zzaWo:Lcom/google/android/gms/internal/zzbxf;

    if-nez v3, :cond_1

    :goto_1
    invoke-static {p1, v0, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v0, 0x3e8

    iget v1, p0, Lcom/google/android/gms/fitness/request/zzaq;->zzaku:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzaq;->zzaWV:Lcom/google/android/gms/fitness/data/zzt;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/data/zzt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzaq;->zzaWo:Lcom/google/android/gms/internal/zzbxf;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbxf;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1
.end method
