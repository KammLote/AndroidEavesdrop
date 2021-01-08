.class final Lcom/google/android/gms/internal/zzaok;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanp;


# instance fields
.field final synthetic zzadv:Lcom/google/android/gms/internal/zzaob;

.field final synthetic zzadw:I

.field private synthetic zzaiE:Lcom/google/android/gms/internal/zzami;

.field final synthetic zzaiF:Lcom/google/android/gms/internal/zzaoj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaoj;ILcom/google/android/gms/internal/zzami;Lcom/google/android/gms/internal/zzaob;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaok;->zzaiF:Lcom/google/android/gms/internal/zzaoj;

    iput p2, p0, Lcom/google/android/gms/internal/zzaok;->zzadw:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaok;->zzaiE:Lcom/google/android/gms/internal/zzami;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaok;->zzadv:Lcom/google/android/gms/internal/zzaob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaok;->zzaiF:Lcom/google/android/gms/internal/zzaoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaoj;->zzb(Lcom/google/android/gms/internal/zzaoj;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaol;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaol;-><init>(Lcom/google/android/gms/internal/zzaok;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
