.class final Lcom/google/android/gms/internal/zzawi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic zzavO:Lcom/google/android/gms/internal/zzawh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawi;->zzavO:Lcom/google/android/gms/internal/zzawh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavO:Lcom/google/android/gms/internal/zzawh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzawh;->zza(Lcom/google/android/gms/internal/zzawh;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->togglePlayback()V

    :cond_0
    return-void
.end method
