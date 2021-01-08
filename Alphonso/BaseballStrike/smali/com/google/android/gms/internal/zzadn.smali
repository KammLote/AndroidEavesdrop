.class final Lcom/google/android/gms/internal/zzadn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzWF:Lcom/google/android/gms/internal/zzut;

.field private synthetic zzWG:Lcom/google/android/gms/internal/zzadl;

.field private synthetic zzWH:Lcom/google/android/gms/internal/zzadt;

.field private synthetic zzua:Lcom/google/android/gms/internal/zzir;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzadl;Lcom/google/android/gms/internal/zzut;Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzadt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadn;->zzWG:Lcom/google/android/gms/internal/zzadl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzadn;->zzWF:Lcom/google/android/gms/internal/zzut;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzadn;->zzua:Lcom/google/android/gms/internal/zzir;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzadn;->zzWH:Lcom/google/android/gms/internal/zzadt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadn;->zzWF:Lcom/google/android/gms/internal/zzut;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadn;->zzWG:Lcom/google/android/gms/internal/zzadl;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzadl;->zza(Lcom/google/android/gms/internal/zzadl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzadn;->zzua:Lcom/google/android/gms/internal/zzir;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzadn;->zzWH:Lcom/google/android/gms/internal/zzadt;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzadn;->zzWG:Lcom/google/android/gms/internal/zzadl;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzadl;->zzb(Lcom/google/android/gms/internal/zzadl;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzut;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzir;Ljava/lang/String;Lcom/google/android/gms/internal/zzadz;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "Fail to initialize adapter "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadn;->zzWG:Lcom/google/android/gms/internal/zzadl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzadl;->zzc(Lcom/google/android/gms/internal/zzadl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadn;->zzWG:Lcom/google/android/gms/internal/zzadl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadn;->zzWG:Lcom/google/android/gms/internal/zzadl;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzadl;->zzc(Lcom/google/android/gms/internal/zzadl;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzadl;->zza(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
