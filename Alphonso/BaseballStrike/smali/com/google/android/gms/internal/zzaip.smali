.class public final Lcom/google/android/gms/internal/zzaip;
.super Lcom/google/android/gms/internal/zzafo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private final zzD:Ljava/lang/String;

.field private final zzaat:Lcom/google/android/gms/internal/zzajc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzagy;->zzs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/internal/zzaip;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzafo;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzajc;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzajc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaip;->zzaat:Lcom/google/android/gms/internal/zzajc;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaip;->zzD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onStop()V
    .locals 0

    return-void
.end method

.method public final zzbd()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaip;->zzaat:Lcom/google/android/gms/internal/zzajc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaip;->zzD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajc;->zzaN(Ljava/lang/String;)V

    return-void
.end method
