.class final Lcom/google/android/gms/internal/zzciu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbuk:Lcom/google/android/gms/internal/zzcip;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcip;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzciu;->zzbuk:Lcom/google/android/gms/internal/zzcip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciu;->zzbuk:Lcom/google/android/gms/internal/zzcip;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcip;->zzbua:Lcom/google/android/gms/internal/zzcic;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcic;->zza(Lcom/google/android/gms/internal/zzcic;Lcom/google/android/gms/internal/zzcfc;)Lcom/google/android/gms/internal/zzcfc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciu;->zzbuk:Lcom/google/android/gms/internal/zzcip;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcip;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcic;->zzb(Lcom/google/android/gms/internal/zzcic;)V

    return-void
.end method
