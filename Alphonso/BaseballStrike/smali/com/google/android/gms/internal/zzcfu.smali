.class final Lcom/google/android/gms/internal/zzcfu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbrg:Z

.field private synthetic zzbrh:Lcom/google/android/gms/internal/zzcft;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcft;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfu;->zzbrh:Lcom/google/android/gms/internal/zzcft;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcfu;->zzbrg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfu;->zzbrh:Lcom/google/android/gms/internal/zzcft;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcft;->zza(Lcom/google/android/gms/internal/zzcft;)Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcfu;->zzbrg:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgk;->zzam(Z)V

    return-void
.end method
