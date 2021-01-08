.class public final Lcom/google/android/gms/internal/abv;
.super Ljava/lang/Object;


# static fields
.field private static final zzcpS:Ljava/lang/Object;

.field private static volatile zzcpT:Lcom/google/android/gms/internal/abv;


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzcks:Lcom/google/firebase/FirebaseApp;

.field private zzcpU:Lcom/google/android/gms/internal/abt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/abv;->zzcpS:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 3
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/abv;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/abv;->zzcks:Lcom/google/firebase/FirebaseApp;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/abv;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaSL:Lcom/google/android/gms/dynamite/DynamiteModule$zzd;

    const-string v2, "com.google.android.gms.firebasestorage"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzd;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string v1, "com.google.firebase.storage.network.NetworkRequestFactoryImpl"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzcV(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/abv;->zzcpU:Lcom/google/android/gms/internal/abt;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zzc; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/gms/internal/abv;->zzcpU:Lcom/google/android/gms/internal/abt;

    if-nez v0, :cond_2

    const-string v0, "NetworkRqFactoryProxy"

    const-string v1, "Unable to load Firebase Storage Network layer."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "com.google.firebase.storage.network.INetworkRequestFactory"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/abt;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/abt;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/abu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/abu;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zzc; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetworkRqFactoryProxy"

    const-string v2, "NetworkRequestFactoryProxy failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2
    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/abw;)Lcom/google/android/gms/internal/abw;
    .locals 2

    const-string v0, "x-firebase-gmpid"

    iget-object v1, p0, Lcom/google/android/gms/internal/abv;->zzcks:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/abw;->zzam(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static zzg(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/abv;
    .locals 2
    .param p0    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/abv;->zzcpT:Lcom/google/android/gms/internal/abv;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/abv;->zzcpS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/abv;->zzcpT:Lcom/google/android/gms/internal/abv;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/abv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/abv;-><init>(Lcom/google/firebase/FirebaseApp;)V

    sput-object v0, Lcom/google/android/gms/internal/abv;->zzcpT:Lcom/google/android/gms/internal/abv;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/abv;->zzcpT:Lcom/google/android/gms/internal/abv;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final zzLk()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/abv;->zzcpU:Lcom/google/android/gms/internal/abt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/abt;->zzLk()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkRqFactoryProxy"

    const-string v2, "getBackendAuthority failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zza(Landroid/net/Uri;J)Lcom/google/android/gms/internal/abw;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/abw;

    iget-object v1, p0, Lcom/google/android/gms/internal/abv;->zzcpU:Lcom/google/android/gms/internal/abt;

    iget-object v2, p0, Lcom/google/android/gms/internal/abv;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Lcom/google/android/gms/internal/abt;->zza(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;J)Lcom/google/android/gms/internal/abr;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/abw;-><init>(Lcom/google/android/gms/internal/abr;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/abv;->zze(Lcom/google/android/gms/internal/abw;)Lcom/google/android/gms/internal/abw;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/abw;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/abw;

    iget-object v1, p0, Lcom/google/android/gms/internal/abv;->zzcpU:Lcom/google/android/gms/internal/abt;

    iget-object v2, p0, Lcom/google/android/gms/internal/abv;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Lcom/google/android/gms/internal/abt;->zza(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)Lcom/google/android/gms/internal/abr;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/abw;-><init>(Lcom/google/android/gms/internal/abr;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/abv;->zze(Lcom/google/android/gms/internal/abw;)Lcom/google/android/gms/internal/abw;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Landroid/net/Uri;Ljava/lang/String;[BJIZ)Lcom/google/android/gms/internal/abw;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/abw;

    iget-object v1, p0, Lcom/google/android/gms/internal/abv;->zzcpU:Lcom/google/android/gms/internal/abt;

    iget-object v2, p0, Lcom/google/android/gms/internal/abv;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object v2, p1

    move-object v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/google/android/gms/internal/abt;->zza(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;JIZ)Lcom/google/android/gms/internal/abr;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/abw;-><init>(Lcom/google/android/gms/internal/abr;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/abv;->zze(Lcom/google/android/gms/internal/abw;)Lcom/google/android/gms/internal/abw;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Landroid/net/Uri;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/abw;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/abw;

    iget-object v1, p0, Lcom/google/android/gms/internal/abv;->zzcpU:Lcom/google/android/gms/internal/abt;

    iget-object v2, p0, Lcom/google/android/gms/internal/abv;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/gms/internal/abt;->zza(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/abr;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/abw;-><init>(Lcom/google/android/gms/internal/abr;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/abv;->zze(Lcom/google/android/gms/internal/abw;)Lcom/google/android/gms/internal/abw;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/abw;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/abw;

    iget-object v1, p0, Lcom/google/android/gms/internal/abv;->zzcpU:Lcom/google/android/gms/internal/abt;

    iget-object v2, p0, Lcom/google/android/gms/internal/abv;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, p3}, Lcom/google/android/gms/internal/abt;->zza(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)Lcom/google/android/gms/internal/abr;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/abw;-><init>(Lcom/google/android/gms/internal/abr;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/abv;->zze(Lcom/google/android/gms/internal/abw;)Lcom/google/android/gms/internal/abw;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/abw;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/abw;

    iget-object v1, p0, Lcom/google/android/gms/internal/abv;->zzcpU:Lcom/google/android/gms/internal/abt;

    iget-object v2, p0, Lcom/google/android/gms/internal/abv;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Lcom/google/android/gms/internal/abt;->zzb(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)Lcom/google/android/gms/internal/abr;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/abw;-><init>(Lcom/google/android/gms/internal/abr;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/abv;->zze(Lcom/google/android/gms/internal/abw;)Lcom/google/android/gms/internal/abw;

    move-result-object v0

    return-object v0
.end method

.method public final zzv(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/abv;->zzcpU:Lcom/google/android/gms/internal/abt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/abt;->zzv(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkRqFactoryProxy"

    const-string v2, "getDefaultURL failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzw(Landroid/net/Uri;)Lcom/google/android/gms/internal/abw;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/abw;

    iget-object v1, p0, Lcom/google/android/gms/internal/abv;->zzcpU:Lcom/google/android/gms/internal/abt;

    iget-object v2, p0, Lcom/google/android/gms/internal/abv;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/abt;->zza(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/abr;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/abw;-><init>(Lcom/google/android/gms/internal/abr;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/abv;->zze(Lcom/google/android/gms/internal/abw;)Lcom/google/android/gms/internal/abw;

    move-result-object v0

    return-object v0
.end method

.method public final zzx(Landroid/net/Uri;)Lcom/google/android/gms/internal/abw;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/abw;

    iget-object v1, p0, Lcom/google/android/gms/internal/abv;->zzcpU:Lcom/google/android/gms/internal/abt;

    iget-object v2, p0, Lcom/google/android/gms/internal/abv;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/abt;->zzb(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/abr;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/abw;-><init>(Lcom/google/android/gms/internal/abr;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/abv;->zze(Lcom/google/android/gms/internal/abw;)Lcom/google/android/gms/internal/abw;

    move-result-object v0

    return-object v0
.end method
