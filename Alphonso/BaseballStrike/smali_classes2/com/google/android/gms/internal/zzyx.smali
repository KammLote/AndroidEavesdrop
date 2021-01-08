.class final Lcom/google/android/gms/internal/zzyx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzRZ:Lorg/json/JSONObject;

.field final synthetic zzSa:Lcom/google/android/gms/internal/zzajf;

.field final synthetic zzSb:Lcom/google/android/gms/internal/zzyw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyw;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzajf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyx;->zzSb:Lcom/google/android/gms/internal/zzyw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyx;->zzRZ:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyx;->zzSa:Lcom/google/android/gms/internal/zzajf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyx;->zzSb:Lcom/google/android/gms/internal/zzyw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzyw;->zzgz()Lcom/google/android/gms/internal/zzajz;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyx;->zzSb:Lcom/google/android/gms/internal/zzyw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzyw;->zza(Lcom/google/android/gms/internal/zzyw;)Lcom/google/android/gms/ads/internal/zzbb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbb;->zzd(Lcom/google/android/gms/internal/zzajz;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->zziw()Lcom/google/android/gms/internal/zzaka;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyx;->zzSb:Lcom/google/android/gms/internal/zzyw;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzyw;->zza(Lcom/google/android/gms/internal/zzyw;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyx;->zzSb:Lcom/google/android/gms/internal/zzyw;

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzyw;->zzb(Lcom/google/android/gms/internal/zzyw;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzaka;->zza(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyx;->zzSb:Lcom/google/android/gms/internal/zzyw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzyw;->zza(Lcom/google/android/gms/internal/zzyw;Lcom/google/android/gms/internal/zzajz;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->zziw()Lcom/google/android/gms/internal/zzaka;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzyy;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zzyy;-><init>(Lcom/google/android/gms/internal/zzyx;Lcom/google/android/gms/internal/zzajz;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzaka;->zza(Lcom/google/android/gms/internal/zzakf;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->zziw()Lcom/google/android/gms/internal/zzaka;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzyz;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzyz;-><init>(Lcom/google/android/gms/internal/zzyx;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzaka;->zza(Lcom/google/android/gms/internal/zzake;)V

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzFu:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzajz;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video view"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyx;->zzSa:Lcom/google/android/gms/internal/zzajf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajf;->zzg(Ljava/lang/Object;)V

    goto :goto_0
.end method
