.class final Lcom/google/android/gms/internal/sg;
.super Lcom/google/android/gms/internal/wo;


# instance fields
.field private synthetic zzccI:Lcom/google/android/gms/internal/qo;

.field private synthetic zzceB:Lcom/google/android/gms/internal/sf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sf;Lcom/google/android/gms/internal/qo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sg;->zzceB:Lcom/google/android/gms/internal/sf;

    iput-object p2, p0, Lcom/google/android/gms/internal/sg;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/sg;->zzceB:Lcom/google/android/gms/internal/sf;

    iget-object v1, p0, Lcom/google/android/gms/internal/sg;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/qo;->zza(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/qo;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/sf;->zzh(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V

    return-void
.end method
