.class public final Lcom/google/android/gms/internal/zzabt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzQx:Ljava/lang/String;

.field private zzUL:Ljava/lang/String;

.field private zzUM:Lcom/google/android/gms/internal/zzajf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzajf",
            "<",
            "Lcom/google/android/gms/internal/zzabz;",
            ">;"
        }
    .end annotation
.end field

.field zzUN:Lcom/google/android/gms/ads/internal/js/zzy;

.field public final zzUO:Lcom/google/android/gms/internal/zzrd;

.field public final zzUP:Lcom/google/android/gms/internal/zzrd;

.field public final zzUQ:Lcom/google/android/gms/internal/zzrd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabt;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzajf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabt;->zzUM:Lcom/google/android/gms/internal/zzajf;

    new-instance v0, Lcom/google/android/gms/internal/zzabu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzabu;-><init>(Lcom/google/android/gms/internal/zzabt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabt;->zzUO:Lcom/google/android/gms/internal/zzrd;

    new-instance v0, Lcom/google/android/gms/internal/zzabv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzabv;-><init>(Lcom/google/android/gms/internal/zzabt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabt;->zzUP:Lcom/google/android/gms/internal/zzrd;

    new-instance v0, Lcom/google/android/gms/internal/zzabw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzabw;-><init>(Lcom/google/android/gms/internal/zzabt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabt;->zzUQ:Lcom/google/android/gms/internal/zzrd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabt;->zzUL:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabt;->zzQx:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzabt;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabt;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzabt;)Lcom/google/android/gms/internal/zzajf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabt;->zzUM:Lcom/google/android/gms/internal/zzajf;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzabt;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabt;->zzQx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzabt;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabt;->zzUL:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final fail()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzabz;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzabz;-><init>(ILjava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabt;->zzUM:Lcom/google/android/gms/internal/zzajf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzajf;->zzg(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzgG()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzabz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabt;->zzUM:Lcom/google/android/gms/internal/zzajf;

    return-object v0
.end method
