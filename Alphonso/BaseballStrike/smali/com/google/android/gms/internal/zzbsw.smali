.class public abstract Lcom/google/android/gms/internal/zzbsw;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/internal/zzbsv;


# direct methods
.method public static zzL(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbsv;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbsv;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzbsv;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbsx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbsx;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbsw;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v5

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsy;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_2
    move v0, v6

    goto :goto_0

    :cond_1
    const-string v0, "com.google.android.gms.drive.realtime.internal.IStringCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbsy;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/zzbsy;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzbsz;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzbsz;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_3
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Lcom/google/android/gms/internal/zzbsb;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :cond_3
    const-string v0, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbsb;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    move-object v5, v0

    goto :goto_3

    :cond_4
    new-instance v5, Lcom/google/android/gms/internal/zzbsc;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbsc;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_5

    :goto_4
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Lcom/google/android/gms/internal/zzbta;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :cond_5
    const-string v0, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbta;

    if-eqz v2, :cond_6

    check-cast v0, Lcom/google/android/gms/internal/zzbta;

    move-object v5, v0

    goto :goto_4

    :cond_6
    new-instance v5, Lcom/google/android/gms/internal/zzbtb;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbtb;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_5
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zzb(Lcom/google/android/gms/internal/zzbsb;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :cond_7
    const-string v0, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbsb;

    if-eqz v2, :cond_8

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    move-object v5, v0

    goto :goto_5

    :cond_8
    new-instance v5, Lcom/google/android/gms/internal/zzbsc;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbsc;-><init>(Landroid/os/IBinder;)V

    goto :goto_5

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_9

    :goto_6
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zzb(Lcom/google/android/gms/internal/zzbta;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_9
    const-string v0, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbta;

    if-eqz v2, :cond_a

    check-cast v0, Lcom/google/android/gms/internal/zzbta;

    move-object v5, v0

    goto :goto_6

    :cond_a
    new-instance v5, Lcom/google/android/gms/internal/zzbtb;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbtb;-><init>(Landroid/os/IBinder;)V

    goto :goto_6

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_b

    :goto_7
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Lcom/google/android/gms/internal/zzbst;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_b
    const-string v0, "com.google.android.gms.drive.realtime.internal.IIntCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbst;

    if-eqz v2, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/zzbst;

    move-object v5, v0

    goto :goto_7

    :cond_c
    new-instance v5, Lcom/google/android/gms/internal/zzbsu;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbsu;-><init>(Landroid/os/IBinder;)V

    goto :goto_7

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_d

    :goto_8
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zzc(Lcom/google/android/gms/internal/zzbsb;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_d
    const-string v0, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbsb;

    if-eqz v2, :cond_e

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    move-object v5, v0

    goto :goto_8

    :cond_e
    new-instance v5, Lcom/google/android/gms/internal/zzbsc;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbsc;-><init>(Landroid/os/IBinder;)V

    goto :goto_8

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_f

    :goto_9
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzbsy;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_f
    const-string v0, "com.google.android.gms.drive.realtime.internal.IStringCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/android/gms/internal/zzbsy;

    if-eqz v4, :cond_10

    check-cast v0, Lcom/google/android/gms/internal/zzbsy;

    move-object v5, v0

    goto :goto_9

    :cond_10
    new-instance v5, Lcom/google/android/gms/internal/zzbsz;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/zzbsz;-><init>(Landroid/os/IBinder;)V

    goto :goto_9

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_11

    :goto_a
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbsh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_11
    const-string v0, "com.google.android.gms.drive.realtime.internal.IDataHolderCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/android/gms/internal/zzbsh;

    if-eqz v4, :cond_12

    check-cast v0, Lcom/google/android/gms/internal/zzbsh;

    move-object v5, v0

    goto :goto_a

    :cond_12
    new-instance v5, Lcom/google/android/gms/internal/zzbsi;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/zzbsi;-><init>(Landroid/os/IBinder;)V

    goto :goto_a

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_13

    :goto_b
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbst;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_13
    const-string v0, "com.google.android.gms.drive.realtime.internal.IIntCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbst;

    if-eqz v3, :cond_14

    check-cast v0, Lcom/google/android/gms/internal/zzbst;

    move-object v5, v0

    goto :goto_b

    :cond_14
    new-instance v5, Lcom/google/android/gms/internal/zzbsu;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbsu;-><init>(Landroid/os/IBinder;)V

    goto :goto_b

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_15

    :goto_c
    invoke-virtual {p0, v2, v0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzbsp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_15
    const-string v1, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {v3, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v4, v1, Lcom/google/android/gms/internal/zzbsp;

    if-eqz v4, :cond_16

    check-cast v1, Lcom/google/android/gms/internal/zzbsp;

    move-object v5, v1

    goto :goto_c

    :cond_16
    new-instance v5, Lcom/google/android/gms/internal/zzbsq;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/zzbsq;-><init>(Landroid/os/IBinder;)V

    goto :goto_c

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_17

    :goto_d
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_17
    const-string v0, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbsp;

    if-eqz v3, :cond_18

    check-cast v0, Lcom/google/android/gms/internal/zzbsp;

    move-object v5, v0

    goto :goto_d

    :cond_18
    new-instance v5, Lcom/google/android/gms/internal/zzbsq;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbsq;-><init>(Landroid/os/IBinder;)V

    goto :goto_d

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_19

    :goto_e
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_19
    const-string v0, "com.google.android.gms.drive.realtime.internal.IDataHolderCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbsh;

    if-eqz v3, :cond_1a

    check-cast v0, Lcom/google/android/gms/internal/zzbsh;

    move-object v5, v0

    goto :goto_e

    :cond_1a
    new-instance v5, Lcom/google/android/gms/internal/zzbsi;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbsi;-><init>(Landroid/os/IBinder;)V

    goto :goto_e

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_1b

    :goto_f
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbsj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_1b
    const-string v0, "com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/android/gms/internal/zzbsj;

    if-eqz v4, :cond_1c

    check-cast v0, Lcom/google/android/gms/internal/zzbsj;

    move-object v5, v0

    goto :goto_f

    :cond_1c
    new-instance v5, Lcom/google/android/gms/internal/zzbsk;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/zzbsk;-><init>(Landroid/os/IBinder;)V

    goto :goto_f

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1d

    :goto_10
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/zzbsw;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbst;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_1d
    const-string v0, "com.google.android.gms.drive.realtime.internal.IIntCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbst;

    if-eqz v3, :cond_1e

    check-cast v0, Lcom/google/android/gms/internal/zzbst;

    move-object v5, v0

    goto :goto_10

    :cond_1e
    new-instance v5, Lcom/google/android/gms/internal/zzbsu;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbsu;-><init>(Landroid/os/IBinder;)V

    goto :goto_10

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1f

    :goto_11
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/zzbsw;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsy;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_1f
    const-string v0, "com.google.android.gms.drive.realtime.internal.IStringCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbsy;

    if-eqz v3, :cond_20

    check-cast v0, Lcom/google/android/gms/internal/zzbsy;

    move-object v5, v0

    goto :goto_11

    :cond_20
    new-instance v5, Lcom/google/android/gms/internal/zzbsz;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbsz;-><init>(Landroid/os/IBinder;)V

    goto :goto_11

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_21

    :goto_12
    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/zzbsp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_21
    const-string v0, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v5, v0, Lcom/google/android/gms/internal/zzbsp;

    if-eqz v5, :cond_22

    check-cast v0, Lcom/google/android/gms/internal/zzbsp;

    move-object v5, v0

    goto :goto_12

    :cond_22
    new-instance v5, Lcom/google/android/gms/internal/zzbsq;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/zzbsq;-><init>(Landroid/os/IBinder;)V

    goto :goto_12

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_23

    :goto_13
    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;IILcom/google/android/gms/internal/zzbsp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_23
    const-string v0, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v5, v0, Lcom/google/android/gms/internal/zzbsp;

    if-eqz v5, :cond_24

    check-cast v0, Lcom/google/android/gms/internal/zzbsp;

    move-object v5, v0

    goto :goto_13

    :cond_24
    new-instance v5, Lcom/google/android/gms/internal/zzbsq;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/zzbsq;-><init>(Landroid/os/IBinder;)V

    goto :goto_13

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_25

    :goto_14
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbsp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_25
    const-string v0, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/android/gms/internal/zzbsp;

    if-eqz v4, :cond_26

    check-cast v0, Lcom/google/android/gms/internal/zzbsp;

    move-object v5, v0

    goto :goto_14

    :cond_26
    new-instance v5, Lcom/google/android/gms/internal/zzbsq;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/zzbsq;-><init>(Landroid/os/IBinder;)V

    goto :goto_14

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_27

    :goto_15
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/zzbsw;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_27
    const-string v0, "com.google.android.gms.drive.realtime.internal.IDataHolderCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbsh;

    if-eqz v3, :cond_28

    check-cast v0, Lcom/google/android/gms/internal/zzbsh;

    move-object v5, v0

    goto :goto_15

    :cond_28
    new-instance v5, Lcom/google/android/gms/internal/zzbsi;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbsi;-><init>(Landroid/os/IBinder;)V

    goto :goto_15

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_29

    :goto_16
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/zzbsw;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/zzbst;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_29
    const-string v0, "com.google.android.gms.drive.realtime.internal.IIntCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbst;

    if-eqz v3, :cond_2a

    check-cast v0, Lcom/google/android/gms/internal/zzbst;

    move-object v5, v0

    goto :goto_16

    :cond_2a
    new-instance v5, Lcom/google/android/gms/internal/zzbsu;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbsu;-><init>(Landroid/os/IBinder;)V

    goto :goto_16

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_2b

    :goto_17
    invoke-virtual {p0, v2, v3, v0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzbsp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_2b
    const-string v1, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {v4, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v5, v1, Lcom/google/android/gms/internal/zzbsp;

    if-eqz v5, :cond_2c

    check-cast v1, Lcom/google/android/gms/internal/zzbsp;

    move-object v5, v1

    goto :goto_17

    :cond_2c
    new-instance v5, Lcom/google/android/gms/internal/zzbsq;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/zzbsq;-><init>(Landroid/os/IBinder;)V

    goto :goto_17

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_2d

    :goto_18
    invoke-virtual {p0, v2, v3, v0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzbsj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_2d
    const-string v1, "com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback"

    invoke-interface {v4, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v5, v1, Lcom/google/android/gms/internal/zzbsj;

    if-eqz v5, :cond_2e

    check-cast v1, Lcom/google/android/gms/internal/zzbsj;

    move-object v5, v1

    goto :goto_18

    :cond_2e
    new-instance v5, Lcom/google/android/gms/internal/zzbsk;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/zzbsk;-><init>(Landroid/os/IBinder;)V

    goto :goto_18

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_2f

    :goto_19
    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;IILcom/google/android/gms/internal/zzbsj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_2f
    const-string v0, "com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v5, v0, Lcom/google/android/gms/internal/zzbsj;

    if-eqz v5, :cond_30

    check-cast v0, Lcom/google/android/gms/internal/zzbsj;

    move-object v5, v0

    goto :goto_19

    :cond_30
    new-instance v5, Lcom/google/android/gms/internal/zzbsk;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/zzbsk;-><init>(Landroid/os/IBinder;)V

    goto :goto_19

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_31

    :goto_1a
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/internal/zzbsp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_31
    const-string v0, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {v7, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v5, v0, Lcom/google/android/gms/internal/zzbsp;

    if-eqz v5, :cond_32

    check-cast v0, Lcom/google/android/gms/internal/zzbsp;

    move-object v5, v0

    goto :goto_1a

    :cond_32
    new-instance v5, Lcom/google/android/gms/internal/zzbsq;

    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/zzbsq;-><init>(Landroid/os/IBinder;)V

    goto :goto_1a

    :pswitch_19
    sget-object v0, Lcom/google/android/gms/internal/zzbrx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrx;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_33

    :goto_1b
    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbta;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_33
    const-string v1, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v3, v1, Lcom/google/android/gms/internal/zzbta;

    if-eqz v3, :cond_34

    check-cast v1, Lcom/google/android/gms/internal/zzbta;

    move-object v5, v1

    goto :goto_1b

    :cond_34
    new-instance v5, Lcom/google/android/gms/internal/zzbtb;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbtb;-><init>(Landroid/os/IBinder;)V

    goto :goto_1b

    :pswitch_1a
    sget-object v0, Lcom/google/android/gms/internal/zzbrz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrz;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_35

    :goto_1c
    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Lcom/google/android/gms/internal/zzbrz;Lcom/google/android/gms/internal/zzbsp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_35
    const-string v1, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v3, v1, Lcom/google/android/gms/internal/zzbsp;

    if-eqz v3, :cond_36

    check-cast v1, Lcom/google/android/gms/internal/zzbsp;

    move-object v5, v1

    goto :goto_1c

    :cond_36
    new-instance v5, Lcom/google/android/gms/internal/zzbsq;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbsq;-><init>(Landroid/os/IBinder;)V

    goto :goto_1c

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_37

    :goto_1d
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Lcom/google/android/gms/internal/zzbsp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_37
    const-string v0, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbsp;

    if-eqz v2, :cond_38

    check-cast v0, Lcom/google/android/gms/internal/zzbsp;

    move-object v5, v0

    goto :goto_1d

    :cond_38
    new-instance v5, Lcom/google/android/gms/internal/zzbsq;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbsq;-><init>(Landroid/os/IBinder;)V

    goto :goto_1d

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_39

    :goto_1e
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zzb(Lcom/google/android/gms/internal/zzbsp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_39
    const-string v0, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbsp;

    if-eqz v2, :cond_3a

    check-cast v0, Lcom/google/android/gms/internal/zzbsp;

    move-object v5, v0

    goto :goto_1e

    :cond_3a
    new-instance v5, Lcom/google/android/gms/internal/zzbsq;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbsq;-><init>(Landroid/os/IBinder;)V

    goto :goto_1e

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3b

    :goto_1f
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zzd(Lcom/google/android/gms/internal/zzbsb;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_3b
    const-string v0, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbsb;

    if-eqz v2, :cond_3c

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    move-object v5, v0

    goto :goto_1f

    :cond_3c
    new-instance v5, Lcom/google/android/gms/internal/zzbsc;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbsc;-><init>(Landroid/os/IBinder;)V

    goto :goto_1f

    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3d

    :goto_20
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zze(Lcom/google/android/gms/internal/zzbsb;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_3d
    const-string v0, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbsb;

    if-eqz v2, :cond_3e

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    move-object v5, v0

    goto :goto_20

    :cond_3e
    new-instance v5, Lcom/google/android/gms/internal/zzbsc;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbsc;-><init>(Landroid/os/IBinder;)V

    goto :goto_20

    :pswitch_1f
    invoke-static {p2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_3f

    :goto_21
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(ZLcom/google/android/gms/internal/zzbta;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_3f
    const-string v0, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbta;

    if-eqz v3, :cond_40

    check-cast v0, Lcom/google/android/gms/internal/zzbta;

    move-object v5, v0

    goto :goto_21

    :cond_40
    new-instance v5, Lcom/google/android/gms/internal/zzbtb;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbtb;-><init>(Landroid/os/IBinder;)V

    goto :goto_21

    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_41

    :goto_22
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(ILcom/google/android/gms/internal/zzbta;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_41
    const-string v0, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbta;

    if-eqz v3, :cond_42

    check-cast v0, Lcom/google/android/gms/internal/zzbta;

    move-object v5, v0

    goto :goto_22

    :cond_42
    new-instance v5, Lcom/google/android/gms/internal/zzbtb;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbtb;-><init>(Landroid/os/IBinder;)V

    goto :goto_22

    :pswitch_21
    sget-object v0, Lcom/google/android/gms/internal/zzbte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbte;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_43

    :goto_23
    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Lcom/google/android/gms/internal/zzbte;Lcom/google/android/gms/internal/zzbsy;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_43
    const-string v1, "com.google.android.gms.drive.realtime.internal.IStringCallback"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v3, v1, Lcom/google/android/gms/internal/zzbsy;

    if-eqz v3, :cond_44

    check-cast v1, Lcom/google/android/gms/internal/zzbsy;

    move-object v5, v1

    goto :goto_23

    :cond_44
    new-instance v5, Lcom/google/android/gms/internal/zzbsz;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbsz;-><init>(Landroid/os/IBinder;)V

    goto :goto_23

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_45

    :goto_24
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsr;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_45
    const-string v0, "com.google.android.gms.drive.realtime.internal.IIndexReferenceCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbsr;

    if-eqz v3, :cond_46

    check-cast v0, Lcom/google/android/gms/internal/zzbsr;

    move-object v5, v0

    goto :goto_24

    :cond_46
    new-instance v5, Lcom/google/android/gms/internal/zzbss;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbss;-><init>(Landroid/os/IBinder;)V

    goto :goto_24

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_47

    :goto_25
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzbta;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_47
    const-string v0, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/android/gms/internal/zzbta;

    if-eqz v4, :cond_48

    check-cast v0, Lcom/google/android/gms/internal/zzbta;

    move-object v5, v0

    goto :goto_25

    :cond_48
    new-instance v5, Lcom/google/android/gms/internal/zzbtb;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/zzbtb;-><init>(Landroid/os/IBinder;)V

    goto :goto_25

    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_49

    :goto_26
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zzb(Lcom/google/android/gms/internal/zzbst;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_49
    const-string v0, "com.google.android.gms.drive.realtime.internal.IIntCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbst;

    if-eqz v2, :cond_4a

    check-cast v0, Lcom/google/android/gms/internal/zzbst;

    move-object v5, v0

    goto :goto_26

    :cond_4a
    new-instance v5, Lcom/google/android/gms/internal/zzbsu;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbsu;-><init>(Landroid/os/IBinder;)V

    goto :goto_26

    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_4b

    :goto_27
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(ILcom/google/android/gms/internal/zzbsp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_4b
    const-string v0, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbsp;

    if-eqz v3, :cond_4c

    check-cast v0, Lcom/google/android/gms/internal/zzbsp;

    move-object v5, v0

    goto :goto_27

    :cond_4c
    new-instance v5, Lcom/google/android/gms/internal/zzbsq;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbsq;-><init>(Landroid/os/IBinder;)V

    goto :goto_27

    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4d

    :goto_28
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Lcom/google/android/gms/internal/zzbsf;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_4d
    const-string v0, "com.google.android.gms.drive.realtime.internal.ICollaboratorsCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbsf;

    if-eqz v2, :cond_4e

    check-cast v0, Lcom/google/android/gms/internal/zzbsf;

    move-object v5, v0

    goto :goto_28

    :cond_4e
    new-instance v5, Lcom/google/android/gms/internal/zzbsg;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbsg;-><init>(Landroid/os/IBinder;)V

    goto :goto_28

    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4f

    :goto_29
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Lcom/google/android/gms/internal/zzbsd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_4f
    const-string v0, "com.google.android.gms.drive.realtime.internal.ICollaboratorEventCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbsd;

    if-eqz v2, :cond_50

    check-cast v0, Lcom/google/android/gms/internal/zzbsd;

    move-object v5, v0

    goto :goto_29

    :cond_50
    new-instance v5, Lcom/google/android/gms/internal/zzbse;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbse;-><init>(Landroid/os/IBinder;)V

    goto :goto_29

    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_51

    :goto_2a
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Lcom/google/android/gms/internal/zzbsn;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_51
    const-string v0, "com.google.android.gms.drive.realtime.internal.IErrorCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbsn;

    if-eqz v2, :cond_52

    check-cast v0, Lcom/google/android/gms/internal/zzbsn;

    move-object v5, v0

    goto :goto_2a

    :cond_52
    new-instance v5, Lcom/google/android/gms/internal/zzbso;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbso;-><init>(Landroid/os/IBinder;)V

    goto :goto_2a

    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_53

    :goto_2b
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Lcom/google/android/gms/internal/zzbsl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_53
    const-string v0, "com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbsl;

    if-eqz v2, :cond_54

    check-cast v0, Lcom/google/android/gms/internal/zzbsl;

    move-object v5, v0

    goto :goto_2b

    :cond_54
    new-instance v5, Lcom/google/android/gms/internal/zzbsm;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbsm;-><init>(Landroid/os/IBinder;)V

    goto :goto_2b

    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_55

    :goto_2c
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbta;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_55
    const-string v0, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbta;

    if-eqz v3, :cond_56

    check-cast v0, Lcom/google/android/gms/internal/zzbta;

    move-object v5, v0

    goto :goto_2c

    :cond_56
    new-instance v5, Lcom/google/android/gms/internal/zzbtb;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbtb;-><init>(Landroid/os/IBinder;)V

    goto :goto_2c

    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_57

    :goto_2d
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/zzbsw;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbta;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_57
    const-string v0, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbta;

    if-eqz v3, :cond_58

    check-cast v0, Lcom/google/android/gms/internal/zzbta;

    move-object v5, v0

    goto :goto_2d

    :cond_58
    new-instance v5, Lcom/google/android/gms/internal/zzbtb;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbtb;-><init>(Landroid/os/IBinder;)V

    goto :goto_2d

    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_59

    :goto_2e
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/zzbsw;->zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbsh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_59
    const-string v0, "com.google.android.gms.drive.realtime.internal.IDataHolderCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/android/gms/internal/zzbsh;

    if-eqz v4, :cond_5a

    check-cast v0, Lcom/google/android/gms/internal/zzbsh;

    move-object v5, v0

    goto :goto_2e

    :cond_5a
    new-instance v5, Lcom/google/android/gms/internal/zzbsi;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/zzbsi;-><init>(Landroid/os/IBinder;)V

    goto :goto_2e

    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_5b

    :goto_2f
    invoke-virtual {p0, v2, v3, v0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzbsp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_5b
    const-string v1, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {v4, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v5, v1, Lcom/google/android/gms/internal/zzbsp;

    if-eqz v5, :cond_5c

    check-cast v1, Lcom/google/android/gms/internal/zzbsp;

    move-object v5, v1

    goto :goto_2f

    :cond_5c
    new-instance v5, Lcom/google/android/gms/internal/zzbsq;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/zzbsq;-><init>(Landroid/os/IBinder;)V

    goto :goto_2f

    :pswitch_2e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbsw;->zztw()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_2f
    sget-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_5d

    :goto_30
    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/internal/zzbta;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_5d
    const-string v1, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v3, v1, Lcom/google/android/gms/internal/zzbta;

    if-eqz v3, :cond_5e

    check-cast v1, Lcom/google/android/gms/internal/zzbta;

    move-object v5, v1

    goto :goto_30

    :cond_5e
    new-instance v5, Lcom/google/android/gms/internal/zzbtb;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbtb;-><init>(Landroid/os/IBinder;)V

    goto :goto_30

    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_5f

    :goto_31
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzbsw;->zzc(Lcom/google/android/gms/internal/zzbta;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_5f
    const-string v0, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbta;

    if-eqz v2, :cond_60

    check-cast v0, Lcom/google/android/gms/internal/zzbta;

    move-object v5, v0

    goto :goto_31

    :cond_60
    new-instance v5, Lcom/google/android/gms/internal/zzbtb;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzbtb;-><init>(Landroid/os/IBinder;)V

    goto :goto_31

    :pswitch_31
    sget-object v0, Lcom/google/android/gms/internal/zzbrz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrz;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_61

    :goto_32
    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/zzbsw;->zza(Lcom/google/android/gms/internal/zzbrz;Lcom/google/android/gms/internal/zzbta;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :cond_61
    const-string v1, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v3, v1, Lcom/google/android/gms/internal/zzbta;

    if-eqz v3, :cond_62

    check-cast v1, Lcom/google/android/gms/internal/zzbta;

    move-object v5, v1

    goto :goto_32

    :cond_62
    new-instance v5, Lcom/google/android/gms/internal/zzbtb;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzbtb;-><init>(Landroid/os/IBinder;)V

    goto :goto_32

    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzbsw;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbtm;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/zzef;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_19
        :pswitch_31
        :pswitch_c
        :pswitch_d
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_3
        :pswitch_28
        :pswitch_4
        :pswitch_29
        :pswitch_18
        :pswitch_2a
        :pswitch_2b
        :pswitch_5
        :pswitch_1a
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_6
        :pswitch_7
        :pswitch_1f
        :pswitch_2f
        :pswitch_30
        :pswitch_20
        :pswitch_32
    .end packed-switch
.end method
