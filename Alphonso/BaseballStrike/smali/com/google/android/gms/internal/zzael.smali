.class final Lcom/google/android/gms/internal/zzael;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private synthetic zzXk:Lcom/google/android/gms/internal/zzajf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaek;Lcom/google/android/gms/internal/zzajf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzael;->zzXk:Lcom/google/android/gms/internal/zzajf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Failed to connect to SafetyNet API"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaer;->zzaC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzael;->zzXk:Lcom/google/android/gms/internal/zzajf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajf;->zzg(Ljava/lang/Object;)V

    return-void
.end method
