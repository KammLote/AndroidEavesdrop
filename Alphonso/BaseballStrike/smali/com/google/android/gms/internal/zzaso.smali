.class final Lcom/google/android/gms/internal/zzaso;
.super Lcom/google/android/gms/internal/zzarw;


# instance fields
.field private synthetic zzalL:Lcom/google/android/gms/internal/zzasn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzasn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaso;->zzalL:Lcom/google/android/gms/internal/zzasn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzarw;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaso;->zzalL:Lcom/google/android/gms/internal/zzasn;

    new-instance v1, Lcom/google/android/gms/internal/zzasp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzasp;-><init>(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzasn;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
