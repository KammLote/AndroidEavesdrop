.class final Lcom/google/android/gms/internal/zzctd;
.super Lcom/google/android/gms/internal/zzcsz;


# instance fields
.field private synthetic zzbCE:Lcom/google/android/gms/internal/zzctc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzctc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzctd;->zzbCE:Lcom/google/android/gms/internal/zzctc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcsz;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzctd;->zzbCE:Lcom/google/android/gms/internal/zzctc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzctc;->zza(Lcom/google/android/gms/internal/zzctc;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "GetGoogleNowAuthImpl success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzctd;->zzbCE:Lcom/google/android/gms/internal/zzctc;

    new-instance v1, Lcom/google/android/gms/internal/zzcte;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzcte;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzctc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
