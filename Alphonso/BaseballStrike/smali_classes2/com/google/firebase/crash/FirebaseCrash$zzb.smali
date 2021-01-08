.class final Lcom/google/firebase/crash/FirebaseCrash$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/crash/FirebaseCrash$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crash/FirebaseCrash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzb"
.end annotation


# instance fields
.field private final zzbXW:Ljava/lang/Object;

.field private zzbXX:Lcom/google/android/gms/internal/mi;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash$zzb;->zzbXW:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crash/zza;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash$zzb;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/crash/FirebaseCrash$zzb;Lcom/google/android/gms/internal/mi;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crash/FirebaseCrash$zzb;->zzb(Lcom/google/android/gms/internal/mi;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/mi;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/mi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v1, p0, Lcom/google/firebase/crash/FirebaseCrash$zzb;->zzbXW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash$zzb;->zzbXX:Lcom/google/android/gms/internal/mi;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final zzFf()Lcom/google/android/gms/internal/mi;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v1, p0, Lcom/google/firebase/crash/FirebaseCrash$zzb;->zzbXW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash$zzb;->zzbXX:Lcom/google/android/gms/internal/mi;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
