.class final Lcom/google/android/gms/internal/ph;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcbT:Lcom/google/android/gms/internal/pf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ph;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ph;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zzg(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/pj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ph;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zzg(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/pj;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pj;->zzgM(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ph;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zzc(Lcom/google/android/gms/internal/pf;)V

    :cond_0
    return-void
.end method
