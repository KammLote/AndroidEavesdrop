.class public final Lcom/google/android/gms/internal/zzbjc;
.super Lcom/google/android/gms/awareness/fence/FenceState;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbjc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaLd:I

.field private zzaLe:J

.field private zzaLf:Ljava/lang/String;

.field private zzaLg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbjd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/FenceState;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbjc;->zzaLd:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzbjc;->zzaLe:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbjc;->zzaLf:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/zzbjc;->zzaLg:I

    return-void
.end method


# virtual methods
.method public final getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbjc;->zzaLd:I

    return v0
.end method

.method public final getFenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjc;->zzaLf:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastFenceUpdateTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbjc;->zzaLe:J

    return-wide v0
.end method

.method public final getPreviousState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbjc;->zzaLg:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzbjc;->zzaLd:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbjc;->zzaLe:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbjc;->zzaLf:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/zzbjc;->zzaLg:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
