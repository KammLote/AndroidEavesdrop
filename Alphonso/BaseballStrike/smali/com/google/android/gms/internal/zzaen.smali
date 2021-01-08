.class final Lcom/google/android/gms/internal/zzaen;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic zzXn:Lcom/google/android/gms/internal/zzaem;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaem;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaen;->zzXn:Lcom/google/android/gms/internal/zzaem;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaen;->zzXn:Lcom/google/android/gms/internal/zzaem;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaem;->zzXm:Lcom/google/android/gms/internal/zzaek;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaen;->zzXn:Lcom/google/android/gms/internal/zzaem;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaem;->zzXm:Lcom/google/android/gms/internal/zzaek;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaek;->zza(Lcom/google/android/gms/internal/zzaek;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaen;->zzXn:Lcom/google/android/gms/internal/zzaem;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaem;->zzXl:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaen;->zzXn:Lcom/google/android/gms/internal/zzaem;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaem;->zzXk:Lcom/google/android/gms/internal/zzajf;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzaek;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Set;Lcom/google/android/gms/internal/zzajf;)V

    return-void
.end method
