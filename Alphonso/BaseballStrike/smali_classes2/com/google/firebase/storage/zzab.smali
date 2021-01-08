.class final Lcom/google/firebase/storage/zzab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcnP:Lcom/google/firebase/storage/StorageReference;

.field private final zzcnQ:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private zzcnR:Lcom/google/android/gms/internal/abl;

.field private zzcoc:Lcom/google/firebase/storage/StorageMetadata;

.field private final zzcpu:Lcom/google/firebase/storage/StorageMetadata;


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/storage/StorageMetadata;)V
    .locals 4
    .param p1    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/TaskCompletionSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/storage/StorageMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageReference;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/zzab;->zzcoc:Lcom/google/firebase/storage/StorageMetadata;

    iput-object p1, p0, Lcom/google/firebase/storage/zzab;->zzcnP:Lcom/google/firebase/storage/StorageReference;

    iput-object p2, p0, Lcom/google/firebase/storage/zzab;->zzcnQ:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/firebase/storage/zzab;->zzcpu:Lcom/google/firebase/storage/StorageMetadata;

    new-instance v0, Lcom/google/android/gms/internal/abl;

    iget-object v1, p0, Lcom/google/firebase/storage/zzab;->zzcnP:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/zzab;->zzcnP:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxOperationRetryTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/abl;-><init>(Lcom/google/firebase/FirebaseApp;J)V

    iput-object v0, p0, Lcom/google/firebase/storage/zzab;->zzcnR:Lcom/google/android/gms/internal/abl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/zzab;->zzcnP:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->zzKM()Lcom/google/android/gms/internal/abv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/zzab;->zzcnP:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->zzKN()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/zzab;->zzcpu:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageMetadata;->zzKL()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/abv;->zza(Landroid/net/Uri;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/abw;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v0, p0, Lcom/google/firebase/storage/zzab;->zzcnR:Lcom/google/android/gms/internal/abl;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/abl;->zza(Lcom/google/android/gms/internal/abw;Z)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/abw;->zzLi()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/google/firebase/storage/StorageMetadata$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/abw;->zzLl()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/zzab;->zzcnP:Lcom/google/firebase/storage/StorageReference;

    invoke-direct {v0, v2, v3}, Lcom/google/firebase/storage/StorageMetadata$Builder;-><init>(Lorg/json/JSONObject;Lcom/google/firebase/storage/StorageReference;)V

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$Builder;->build()Lcom/google/firebase/storage/StorageMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/zzab;->zzcoc:Lcom/google/firebase/storage/StorageMetadata;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/storage/zzab;->zzcnQ:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/storage/zzab;->zzcnQ:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, Lcom/google/firebase/storage/zzab;->zzcoc:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/abw;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "UpdateMetadataTask"

    const-string v2, "Unable to create the request from metadata."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/google/firebase/storage/zzab;->zzcnQ:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    const-string v2, "UpdateMetadataTask"

    const-string v3, "Unable to parse a valid JSON object from resulting metadata:"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/abw;->zzLg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/google/firebase/storage/zzab;->zzcnQ:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method
