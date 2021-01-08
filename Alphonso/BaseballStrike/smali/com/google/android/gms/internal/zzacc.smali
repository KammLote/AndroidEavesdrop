.class public final Lcom/google/android/gms/internal/zzacc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private zzWe:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzacc;->zzWe:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzacc;)Ljava/util/WeakHashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacc;->zzWe:Ljava/util/WeakHashMap;

    return-object v0
.end method


# virtual methods
.method public final zzn(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzaca;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzacd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzacd;-><init>(Lcom/google/android/gms/internal/zzacc;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzags;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzajl;

    move-result-object v0

    return-object v0
.end method
