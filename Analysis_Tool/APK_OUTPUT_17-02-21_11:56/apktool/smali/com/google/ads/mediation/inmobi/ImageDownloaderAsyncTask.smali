.class public Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;
.super Landroid/os/AsyncTask;
.source "ImageDownloaderAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DRAWABLE_FUTURE_TIMEOUT_SECONDS:J = 0xaL

.field public static final KEY_ICON:Ljava/lang/String; = "icon_key"

.field public static final KEY_IMAGE:Ljava/lang/String; = "image_key"


# instance fields
.field private mListener:Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;

.field memoryCache:Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;

    invoke-direct {v0}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->memoryCache:Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;

    .line 38
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->mListener:Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;

    .line 39
    return-void
.end method

.method private getDrawableFuture(Ljava/net/URL;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$1;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$1;-><init>(Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;Ljava/net/URL;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v8, 0x0

    aget-object v7, p1, v8

    check-cast v7, Ljava/util/HashMap;

    .line 58
    .local v7, "urlsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/net/URL;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 60
    .local v2, "executorService":Ljava/util/concurrent/ExecutorService;
    const-string v8, "image_key"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URL;

    invoke-direct {p0, v8, v2}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->getDrawableFuture(Ljava/net/URL;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v6

    .line 61
    .local v6, "imageDrawableFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable;>;"
    const-string v8, "icon_key"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URL;

    invoke-direct {p0, v8, v2}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->getDrawableFuture(Ljava/net/URL;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 66
    .local v4, "iconDrawableFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable;>;"
    :try_start_0
    iget-object v8, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->memoryCache:Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;

    const-string v9, "image_key"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 67
    iget-object v8, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->memoryCache:Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;

    const-string v9, "image_key"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 72
    .local v5, "imageDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v8, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->memoryCache:Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;

    const-string v9, "icon_key"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 73
    iget-object v8, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->memoryCache:Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;

    const-string v9, "icon_key"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 79
    .local v3, "iconDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v0, "drawableHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    const-string v8, "image_key"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v8, "icon_key"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .end local v0    # "drawableHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .end local v3    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    return-object v0

    .line 69
    :cond_0
    const-wide/16 v8, 0xa

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v8, v9, v10}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 70
    .restart local v5    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->memoryCache:Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;

    const-string v9, "image_key"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 83
    .end local v5    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    const/4 v0, 0x0

    goto :goto_2

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const-wide/16 v8, 0xa

    :try_start_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v8, v9, v10}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 76
    .restart local v3    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->memoryCache:Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;

    const-string v9, "icon_key"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 83
    .end local v3    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "stringDrawableHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 124
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->mListener:Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;

    invoke-interface {v0, p1}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;->onDownloadSuccess(Ljava/util/HashMap;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->mListener:Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;->onDownloadFailure()V

    goto :goto_0
.end method
