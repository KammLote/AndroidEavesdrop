.class public abstract Lcom/google/android/gms/internal/zzafo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaho;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaho",
        "<",
        "Ljava/util/concurrent/Future;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile zzYV:Ljava/lang/Thread;

.field private zzYW:Z

.field private final zzv:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzafp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzafp;-><init>(Lcom/google/android/gms/internal/zzafo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzafo;->zzv:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzafo;->zzYW:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzafp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzafp;-><init>(Lcom/google/android/gms/internal/zzafo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzafo;->zzv:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzafo;->zzYW:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzafo;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafo;->zzYV:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzafo;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafo;->zzYV:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafo;->zzYV:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public abstract onStop()V
.end method

.method public abstract zzbd()V
.end method

.method public final synthetic zzgp()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzafo;->zzYW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafo;->zzv:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzags;->zza(ILjava/lang/Runnable;)Lcom/google/android/gms/internal/zzajl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzafo;->zzv:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzags;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzajl;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzhL()Ljava/util/concurrent/Future;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzafo;->zzYW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafo;->zzv:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzags;->zza(ILjava/lang/Runnable;)Lcom/google/android/gms/internal/zzajl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzafo;->zzv:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzags;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzajl;

    move-result-object v0

    goto :goto_0
.end method