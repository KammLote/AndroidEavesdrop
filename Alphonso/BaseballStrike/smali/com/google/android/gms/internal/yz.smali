.class public final Lcom/google/android/gms/internal/yz;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/yz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcjO:Ljava/lang/String;

.field private zzcjP:Ljava/lang/String;

.field private zzcjQ:I

.field private zzcjR:J

.field private zzcjS:Landroid/os/Bundle;

.field private zzcjT:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/za;

    invoke-direct {v0}, Lcom/google/android/gms/internal/za;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/yz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLandroid/os/Bundle;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/yz;->zzcjR:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/yz;->zzcjS:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/internal/yz;->zzcjO:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/yz;->zzcjP:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/yz;->zzcjQ:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/yz;->zzcjR:J

    iput-object p6, p0, Lcom/google/android/gms/internal/yz;->zzcjS:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/google/android/gms/internal/yz;->zzcjT:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final getClickTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/yz;->zzcjR:J

    return-wide v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/yz;->zzcjO:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/yz;->zzcjP:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/yz;->zzcjQ:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/yz;->zzcjR:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/yz;->zzJK()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/yz;->zzcjT:Landroid/net/Uri;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzJH()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/yz;->zzcjT:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzJI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/yz;->zzcjP:Ljava/lang/String;

    return-object v0
.end method

.method public final zzJJ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/yz;->zzcjQ:I

    return v0
.end method

.method public final zzJK()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/yz;->zzcjS:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/yz;->zzcjS:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public final zzaA(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/yz;->zzcjR:J

    return-void
.end method
