 https://dribbble.com/shots/16367188-Boxiz-App/attachments/9194383?mode=media
  не работает градиент если картинка как фон,
  // The [gradient] is drawn under the [image].
 Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: MediaQuery.of(context).size.height * 0.70,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    BoxizTheme.backgroundColor,
                    BoxizTheme.backgroundColor.withOpacity(0.5),
                    BoxizTheme.backgroundColor.withOpacity(0.25),
                    BoxizTheme.backgroundColor.withOpacity(0.10),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    boxiz.img ?? '',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),