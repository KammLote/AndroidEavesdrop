.class final Lcom/google/android/gms/internal/zzcww;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbJy:Lcom/google/android/gms/internal/zzcwv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcww;->zzbJy:Lcom/google/android/gms/internal/zzcwv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string v0, "App\'s UI deactivated. Dispatching hits."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcww;->zzbJy:Lcom/google/android/gms/internal/zzcwv;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcwv;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwm;->zzb(Lcom/google/android/gms/internal/zzcwm;)Lcom/google/android/gms/internal/zzcxh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcxh;->dispatch()V

    return-void
.end method
