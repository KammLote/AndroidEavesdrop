.class final Lcom/google/android/gms/internal/zzaol;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaiG:Lcom/google/android/gms/internal/zzaok;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaok;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaol;->zzaiG:Lcom/google/android/gms/internal/zzaok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaol;->zzaiG:Lcom/google/android/gms/internal/zzaok;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaok;->zzaiF:Lcom/google/android/gms/internal/zzaoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaoj;->zza(Lcom/google/android/gms/internal/zzaoj;)Lcom/google/android/gms/internal/zzaom;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaol;->zzaiG:Lcom/google/android/gms/internal/zzaok;

    iget v1, v1, Lcom/google/android/gms/internal/zzaok;->zzadw:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaom;->callServiceStopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaol;->zzaiG:Lcom/google/android/gms/internal/zzaok;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaok;->zzadv:Lcom/google/android/gms/internal/zzaob;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaob;->zzbo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
