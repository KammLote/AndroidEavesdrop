.class final Lcom/google/firebase/appindexing/internal/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzaCV:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private synthetic zzbVQ:Lcom/google/firebase/appindexing/internal/zzk;

.field private synthetic zzbVR:Lcom/google/firebase/appindexing/internal/zzm;


# direct methods
.method constructor <init>(Lcom/google/firebase/appindexing/internal/zzm;Lcom/google/firebase/appindexing/internal/zzk;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/appindexing/internal/zzp;->zzbVR:Lcom/google/firebase/appindexing/internal/zzm;

    iput-object p2, p0, Lcom/google/firebase/appindexing/internal/zzp;->zzbVQ:Lcom/google/firebase/appindexing/internal/zzk;

    iput-object p3, p0, Lcom/google/firebase/appindexing/internal/zzp;->zzaCV:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzp;->zzbVR:Lcom/google/firebase/appindexing/internal/zzm;

    iget-object v1, p0, Lcom/google/firebase/appindexing/internal/zzp;->zzbVQ:Lcom/google/firebase/appindexing/internal/zzk;

    iget-object v2, p0, Lcom/google/firebase/appindexing/internal/zzp;->zzaCV:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/appindexing/internal/zzm;->zza(Lcom/google/firebase/appindexing/internal/zzm;Lcom/google/firebase/appindexing/internal/zzk;Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    return-void
.end method
