.class public final Lcom/google/firebase/crash/zzc;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbVX:Lcom/google/firebase/FirebaseApp;

.field private final zzbYa:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crash/zzc;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/firebase/crash/zzc;->zzbVX:Lcom/google/firebase/FirebaseApp;

    iput-object p2, p0, Lcom/google/firebase/crash/zzc;->zzbYa:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/crash/zzc;)Lcom/google/firebase/FirebaseApp;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crash/zzc;->zzbVX:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/firebase/crash/zzc;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crash/zzc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/firebase/crash/zzc;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crash/zzc;->zzbYa:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final zzFh()Lcom/google/android/gms/internal/mi;
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/firebase/crash/zzc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/mp;->initialize(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/mp;->zzbYn:Lcom/google/android/gms/internal/zzbzt;

    invoke-static {}, Lcom/google/android/gms/internal/zzcae;->zzuc()Lcom/google/android/gms/internal/zzcaa;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcaa;->zzb(Lcom/google/android/gms/internal/zzbzt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mk;->zzFi()Lcom/google/android/gms/internal/mk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/crash/zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mk;->zzav(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/mk;->zzFi()Lcom/google/android/gms/internal/mk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mk;->zzFj()Lcom/google/android/gms/internal/mi;
    :try_end_0
    .catch Lcom/google/android/gms/internal/mm; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v1, "FirebaseCrash"

    invoke-static {}, Lcom/google/android/gms/internal/mk;->zzFi()Lcom/google/android/gms/internal/mk;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "FirebaseCrash reporting loaded - "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/gms/internal/mm; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    const-string v2, "FirebaseCrash"

    const-string v3, "Failed to load crash reporting"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/google/firebase/crash/zzc;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/android/gms/common/util/zzg;->zza(Landroid/content/Context;Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    const-string v0, "FirebaseCrash"

    const-string v2, "Crash reporting is disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
