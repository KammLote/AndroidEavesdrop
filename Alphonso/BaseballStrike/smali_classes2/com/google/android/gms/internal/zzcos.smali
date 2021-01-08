.class public final Lcom/google/android/gms/internal/zzcos;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzcos;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbwE:Lcom/google/android/gms/internal/zzcnh;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbwF:Lcom/google/android/gms/internal/zzcmo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbwG:Ljava/lang/String;

.field private final zzbwH:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbxH:Lcom/google/android/gms/internal/zzcmu;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbxI:Lcom/google/android/gms/internal/zzcmr;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcot;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcot;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcos;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/IBinder;)V
    .locals 8
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x0

    if-nez p1, :cond_0

    move-object v1, v7

    :goto_0
    if-nez p2, :cond_2

    move-object v2, v7

    :goto_1
    if-nez p3, :cond_4

    move-object v3, v7

    :goto_2
    if-nez p7, :cond_6

    :goto_3
    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcos;-><init>(Lcom/google/android/gms/internal/zzcnh;Lcom/google/android/gms/internal/zzcmo;Lcom/google/android/gms/internal/zzcmu;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzcmr;)V

    return-void

    :cond_0
    const-string v0, "com.google.android.gms.nearby.internal.connection.IResultListener"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzcnh;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzcnh;

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzcnj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcnj;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionEventListener"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzcmo;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/google/android/gms/internal/zzcmo;

    move-object v2, v0

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/zzcmq;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/zzcmq;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    :cond_4
    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionResponseListener"

    invoke-interface {p3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzcmu;

    if-eqz v3, :cond_5

    check-cast v0, Lcom/google/android/gms/internal/zzcmu;

    move-object v3, v0

    goto :goto_2

    :cond_5
    new-instance v3, Lcom/google/android/gms/internal/zzcmw;

    invoke-direct {v3, p3}, Lcom/google/android/gms/internal/zzcmw;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    :cond_6
    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionLifecycleListener"

    invoke-interface {p7, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/android/gms/internal/zzcmr;

    if-eqz v4, :cond_7

    check-cast v0, Lcom/google/android/gms/internal/zzcmr;

    move-object v7, v0

    goto :goto_3

    :cond_7
    new-instance v7, Lcom/google/android/gms/internal/zzcmt;

    invoke-direct {v7, p7}, Lcom/google/android/gms/internal/zzcmt;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzcnh;Lcom/google/android/gms/internal/zzcmo;Lcom/google/android/gms/internal/zzcmu;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzcmr;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/zzcnh;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/zzcmo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/zzcmu;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/zzcmr;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcos;->zzbwE:Lcom/google/android/gms/internal/zzcnh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcos;->zzbwF:Lcom/google/android/gms/internal/zzcmo;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcos;->zzbxH:Lcom/google/android/gms/internal/zzcmu;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcos;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcos;->zzbwG:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcos;->zzbwH:[B

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcos;->zzbxI:Lcom/google/android/gms/internal/zzcmr;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzcos;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzcos;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcos;->zzbwE:Lcom/google/android/gms/internal/zzcnh;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcos;->zzbwE:Lcom/google/android/gms/internal/zzcnh;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcos;->zzbwF:Lcom/google/android/gms/internal/zzcmo;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcos;->zzbwF:Lcom/google/android/gms/internal/zzcmo;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcos;->zzbxH:Lcom/google/android/gms/internal/zzcmu;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcos;->zzbxH:Lcom/google/android/gms/internal/zzcmu;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcos;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcos;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcos;->zzbwG:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcos;->zzbwG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcos;->zzbwH:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcos;->zzbwH:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcos;->zzbxI:Lcom/google/android/gms/internal/zzcmr;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcos;->zzbxI:Lcom/google/android/gms/internal/zzcmr;

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
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcos;->zzbwE:Lcom/google/android/gms/internal/zzcnh;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcos;->zzbwF:Lcom/google/android/gms/internal/zzcmo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcos;->zzbxH:Lcom/google/android/gms/internal/zzcmu;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcos;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcos;->zzbwG:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcos;->zzbwH:[B

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcos;->zzbxI:Lcom/google/android/gms/internal/zzcmr;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcos;->zzbwE:Lcom/google/android/gms/internal/zzcnh;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {p1, v3, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcos;->zzbwF:Lcom/google/android/gms/internal/zzcmo;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-static {p1, v3, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcos;->zzbxH:Lcom/google/android/gms/internal/zzcmu;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-static {p1, v3, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcos;->name:Ljava/lang/String;

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcos;->zzbwG:Ljava/lang/String;

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcos;->zzbwH:[B

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcos;->zzbxI:Lcom/google/android/gms/internal/zzcmr;

    if-nez v3, :cond_3

    :goto_3
    invoke-static {p1, v0, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcos;->zzbwE:Lcom/google/android/gms/internal/zzcnh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcnh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcos;->zzbwF:Lcom/google/android/gms/internal/zzcmo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcmo;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcos;->zzbxH:Lcom/google/android/gms/internal/zzcmu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcmu;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcos;->zzbxI:Lcom/google/android/gms/internal/zzcmr;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzcmr;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_3
.end method
