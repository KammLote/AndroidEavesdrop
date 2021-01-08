.class public final Lcom/google/android/gms/internal/ks;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/safeparcel/zza;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRegistered:Z

.field private zzbVW:Ljava/lang/String;

.field private zzbXg:Ljava/lang/String;

.field private zzbXh:Z

.field private zzbXi:Lcom/google/android/gms/internal/lg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/kt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ks;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/lg;->zzEW()Lcom/google/android/gms/internal/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ks;->zzbXi:Lcom/google/android/gms/internal/lg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/google/android/gms/internal/lg;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ks;->zzbXg:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ks;->mRegistered:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ks;->zzbVW:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ks;->zzbXh:Z

    if-nez p5, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/lg;->zzEW()Lcom/google/android/gms/internal/lg;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ks;->zzbXi:Lcom/google/android/gms/internal/lg;

    return-void

    :cond_0
    invoke-static {p5}, Lcom/google/android/gms/internal/lg;->zza(Lcom/google/android/gms/internal/lg;)Lcom/google/android/gms/internal/lg;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final getAllProviders()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->zzbXi:Lcom/google/android/gms/internal/lg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lg;->zzEV()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ks;->zzbXg:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ks;->mRegistered:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ks;->zzbVW:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ks;->zzbXh:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/ks;->zzbXi:Lcom/google/android/gms/internal/lg;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
