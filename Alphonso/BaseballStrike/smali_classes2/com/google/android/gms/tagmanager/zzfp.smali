.class final Lcom/google/android/gms/tagmanager/zzfp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbGO:Lcom/google/android/gms/tagmanager/zzfn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzfn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfp;->zzbGO:Lcom/google/android/gms/tagmanager/zzfn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfp;->zzbGO:Lcom/google/android/gms/tagmanager/zzfn;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfn;->zze(Lcom/google/android/gms/tagmanager/zzfn;)Lcom/google/android/gms/tagmanager/zzcc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzcc;->dispatch()V

    return-void
.end method
