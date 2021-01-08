.class final Lcom/google/android/gms/internal/zzaxz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzayi:Lcom/google/android/gms/internal/zzaxw;

.field private synthetic zzayj:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaxy;Lcom/google/android/gms/internal/zzaxw;I)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaxz;->zzayi:Lcom/google/android/gms/internal/zzaxw;

    iput p3, p0, Lcom/google/android/gms/internal/zzaxz;->zzayj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxz;->zzayi:Lcom/google/android/gms/internal/zzaxw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaxw;->zzd(Lcom/google/android/gms/internal/zzaxw;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzaxz;->zzayj:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V

    return-void
.end method
