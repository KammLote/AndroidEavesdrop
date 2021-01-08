.class final Lcom/google/android/gms/internal/zzaht;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzZI:Lcom/google/android/gms/internal/zzahp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaht;->zzZI:Lcom/google/android/gms/internal/zzahp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbH()Lcom/google/android/gms/internal/zzahv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaht;->zzZI:Lcom/google/android/gms/internal/zzahp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzahp;->zzd(Lcom/google/android/gms/internal/zzahp;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaht;->zzZI:Lcom/google/android/gms/internal/zzahp;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzahp;->zze(Lcom/google/android/gms/internal/zzahp;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaht;->zzZI:Lcom/google/android/gms/internal/zzahp;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzahp;->zzf(Lcom/google/android/gms/internal/zzahp;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzahv;->zzf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
