.class final Lcom/google/android/gms/internal/qn;
.super Lcom/google/android/gms/internal/yl;


# instance fields
.field private synthetic zzbZC:Lcom/google/android/gms/internal/wf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qm;Lcom/google/android/gms/internal/wf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/qn;->zzbZC:Lcom/google/android/gms/internal/wf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/yl;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qn;->zzbZC:Lcom/google/android/gms/internal/wf;

    invoke-static {p1}, Lcom/google/android/gms/internal/yl;->zzh(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/wf;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
