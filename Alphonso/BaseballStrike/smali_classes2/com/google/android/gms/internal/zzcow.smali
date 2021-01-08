.class public final Lcom/google/android/gms/internal/zzcow;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzcow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final durationMillis:J

.field private final name:Ljava/lang/String;

.field private final zzbwr:Ljava/lang/String;

.field private final zzbxI:Lcom/google/android/gms/internal/zzcmr;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbxL:Lcom/google/android/gms/internal/zzcnk;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbxM:Lcom/google/android/gms/internal/zzcml;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbxN:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcox;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcox;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcow;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/AdvertisingOptions;Landroid/os/IBinder;)V
    .locals 13
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    if-nez p2, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-nez p8, :cond_4

    const/4 v11, 0x0

    :goto_2
    move-object v3, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/zzcow;-><init>(Lcom/google/android/gms/internal/zzcnk;Lcom/google/android/gms/internal/zzcml;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/AdvertisingOptions;Lcom/google/android/gms/internal/zzcmr;)V

    return-void

    :cond_0
    const-string v2, "com.google.android.gms.nearby.internal.connection.IStartAdvertisingResultListener"

    invoke-interface {p1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/zzcnk;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/google/android/gms/internal/zzcnk;

    move-object v4, v2

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/zzcnm;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/zzcnm;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_2
    const-string v2, "com.google.android.gms.nearby.internal.connection.IAdvertisingCallback"

    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/zzcml;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/google/android/gms/internal/zzcml;

    move-object v5, v2

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/gms/internal/zzcmn;

    invoke-direct {v5, p2}, Lcom/google/android/gms/internal/zzcmn;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    :cond_4
    const-string v2, "com.google.android.gms.nearby.internal.connection.IConnectionLifecycleListener"

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/zzcmr;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/google/android/gms/internal/zzcmr;

    move-object v11, v2

    goto :goto_2

    :cond_5
    new-instance v11, Lcom/google/android/gms/internal/zzcmt;

    move-object/from16 v0, p8

    invoke-direct {v11, v0}, Lcom/google/android/gms/internal/zzcmt;-><init>(Landroid/os/IBinder;)V

    goto :goto_2
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzcnk;Lcom/google/android/gms/internal/zzcml;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/AdvertisingOptions;Lcom/google/android/gms/internal/zzcmr;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzcnk;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/zzcml;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/gms/internal/zzcmr;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcow;->zzbxL:Lcom/google/android/gms/internal/zzcnk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcow;->zzbxM:Lcom/google/android/gms/internal/zzcml;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcow;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcow;->zzbwr:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcow;->durationMillis:J

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcow;->zzbxN:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzcow;->zzbxI:Lcom/google/android/gms/internal/zzcmr;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzcow;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzcow;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcow;->zzbxL:Lcom/google/android/gms/internal/zzcnk;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcow;->zzbxL:Lcom/google/android/gms/internal/zzcnk;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcow;->zzbxM:Lcom/google/android/gms/internal/zzcml;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcow;->zzbxM:Lcom/google/android/gms/internal/zzcml;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcow;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcow;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcow;->zzbwr:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcow;->zzbwr:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcow;->durationMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcow;->durationMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcow;->zzbxN:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcow;->zzbxN:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcow;->zzbxI:Lcom/google/android/gms/internal/zzcmr;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcow;->zzbxI:Lcom/google/android/gms/internal/zzcmr;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcow;->zzbxL:Lcom/google/android/gms/internal/zzcnk;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcow;->zzbxM:Lcom/google/android/gms/internal/zzcml;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcow;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcow;->zzbwr:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcow;->durationMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcow;->zzbxN:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcow;->zzbxI:Lcom/google/android/gms/internal/zzcmr;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcow;->zzbxL:Lcom/google/android/gms/internal/zzcnk;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {p1, v3, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcow;->zzbxM:Lcom/google/android/gms/internal/zzcml;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-static {p1, v3, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcow;->name:Ljava/lang/String;

    invoke-static {p1, v0, v3, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcow;->zzbwr:Ljava/lang/String;

    invoke-static {p1, v0, v3, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcow;->durationMillis:J

    invoke-static {p1, v0, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcow;->zzbxN:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    invoke-static {p1, v0, v3, p2, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcow;->zzbxI:Lcom/google/android/gms/internal/zzcmr;

    if-nez v3, :cond_2

    :goto_2
    invoke-static {p1, v0, v1, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcow;->zzbxL:Lcom/google/android/gms/internal/zzcnk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcnk;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcow;->zzbxM:Lcom/google/android/gms/internal/zzcml;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcml;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcow;->zzbxI:Lcom/google/android/gms/internal/zzcmr;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzcmr;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_2
.end method
