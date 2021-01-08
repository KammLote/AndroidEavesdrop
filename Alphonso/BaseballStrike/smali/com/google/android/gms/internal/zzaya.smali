.class final Lcom/google/android/gms/internal/zzaya;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzayi:Lcom/google/android/gms/internal/zzaxw;

.field private synthetic zzayk:Lcom/google/android/gms/internal/zzaye;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaxy;Lcom/google/android/gms/internal/zzaxw;Lcom/google/android/gms/internal/zzaye;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaya;->zzayi:Lcom/google/android/gms/internal/zzaxw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaya;->zzayk:Lcom/google/android/gms/internal/zzaye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaya;->zzayi:Lcom/google/android/gms/internal/zzaxw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaya;->zzayk:Lcom/google/android/gms/internal/zzaye;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaxw;->zza(Lcom/google/android/gms/internal/zzaxw;Lcom/google/android/gms/internal/zzaye;)V

    return-void
.end method
