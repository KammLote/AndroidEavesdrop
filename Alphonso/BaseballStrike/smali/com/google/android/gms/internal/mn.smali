.class final Lcom/google/android/gms/internal/mn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbYf:Lcom/google/firebase/crash/FirebaseCrash$zza;

.field private final zzbYl:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/crash/FirebaseCrash$zza;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/crash/FirebaseCrash$zza;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/mn;->zzbYl:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/mn;->zzbYf:Lcom/google/firebase/crash/FirebaseCrash$zza;

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 8

    if-eqz p1, :cond_0

    const-string v0, "crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mn;->zzbYf:Lcom/google/firebase/crash/FirebaseCrash$zza;

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/google/android/gms/internal/mn;->zzbYl:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/mb;

    iget-object v1, p0, Lcom/google/android/gms/internal/mn;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/mn;->zzbYf:Lcom/google/firebase/crash/FirebaseCrash$zza;

    move-object v3, p2

    move-wide v4, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/mb;-><init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;Ljava/lang/String;JLandroid/os/Bundle;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method
