.class public final Lcom/google/android/gms/fitness/request/zzbg;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzbg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaWo:Lcom/google/android/gms/internal/zzbxf;

.field private final zzaXp:Lcom/google/android/gms/fitness/request/zzad;

.field private final zzaku:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzbh;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzbh;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzbg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzaku:I

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzaXp:Lcom/google/android/gms/fitness/request/zzad;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzbxg;->zzW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbxf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzaWo:Lcom/google/android/gms/internal/zzbxf;

    return-void

    :cond_0
    const-string v0, "com.google.android.gms.fitness.request.IBleScanCallback"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/fitness/request/zzad;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/fitness/request/zzad;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/fitness/request/zzaf;

    invoke-direct {v0, p2}, Lcom/google/android/gms/fitness/request/zzaf;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/BleScanCallback;Lcom/google/android/gms/internal/zzbxf;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/fitness/request/zzc;->zztT()Lcom/google/android/gms/fitness/request/zzc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/request/zzc;->zzb(Lcom/google/android/gms/fitness/request/BleScanCallback;)Lcom/google/android/gms/fitness/request/zza;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/fitness/request/zzbg;-><init>(Lcom/google/android/gms/fitness/request/zzad;Lcom/google/android/gms/internal/zzbxf;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/zzad;Lcom/google/android/gms/internal/zzbxf;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzaku:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzaXp:Lcom/google/android/gms/fitness/request/zzad;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzaWo:Lcom/google/android/gms/internal/zzbxf;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzaXp:Lcom/google/android/gms/fitness/request/zzad;

    invoke-interface {v2}, Lcom/google/android/gms/fitness/request/zzad;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzaWo:Lcom/google/android/gms/internal/zzbxf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v0, 0x3e8

    iget v2, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzaku:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzaWo:Lcom/google/android/gms/internal/zzbxf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbxf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
